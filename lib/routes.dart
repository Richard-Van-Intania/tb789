import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home/pattern_details_screen.dart';
import 'screen/error_screen.dart';
import 'screen/plates_details_screen.dart';
import 'screen/plates_filter_screen.dart';
import 'screen/store_details_screen.dart';
import 'sign_in/create_new_account/check_availability_email_screen.dart';
import 'sign_in/create_new_account/check_verification_code_screen.dart';
import 'sign_in/create_new_account/create_new_account_screen.dart';
import 'sign_in/reset_password/check_verification_code_forgot_screen.dart';
import 'sign_in/reset_password/forgot_password_screen.dart';
import 'sign_in/reset_password/reset_password_screen.dart';
import 'sign_in/sign_in_screen.dart';
import 'chats/chats_tab.dart';
import 'explore/explore_tab.dart';
import 'home/home_tab.dart';
import 'main_tab.dart';
import 'account/account_drawer.dart';
import 'account/change_password_screen.dart';
import 'account/delete_account_screen.dart';
import 'account/new_password_screen.dart';
import 'help_and_support/help_and_support_drawer.dart';
import 'liked/liked_drawer.dart';
import 'saved/saved_drawer.dart';
import 'settings/settings_drawer.dart';
import 'transfer/transfer_drawer.dart';
import 'your_store/fill_plates_details_screen.dart';
import 'your_store/select_province_screen.dart';
import 'your_store/your_store_drawer.dart';
import 'search/search_tab.dart';
import 'you/you_tab.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _loadingRoute = RoutingConfig(
  routes: <RouteBase>[
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/',
      builder: (context, state) => const Scaffold(body: Center(child: CircularProgressIndicator())),
    ),
  ],
);

final signInRoute = RoutingConfig(
  routes: <RouteBase>[
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/',
      builder: (context, state) => const SignInScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'caes',
          builder: (context, state) => const CheckAvailabilityEmailScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: 'cvcs',
              builder: (context, state) => const CheckVerificationCodeScreen(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'cnas',
                  builder: (context, state) => const CreateNewAccountScreen(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: 'fps',
          builder: (context, state) => const ForgotPasswordScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: 'cvcfs',
              builder: (context, state) => const CheckVerificationCodeForgotScreen(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'rps',
                  builder: (context, state) => const ResetPasswordScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

final mainRoute = RoutingConfig(
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _rootNavigatorKey,
      builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
        return MainTab(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeTab(),
              routes: <RouteBase>[
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: 'pattern_details_screen',
                  builder: (context, state) => PatternDetailsScreen(
                    name: state.uri.queryParameters['name']!,
                    path: state.uri.queryParameters['path']!,
                    pattern: state.uri.queryParameters['pattern']!,
                    plates_type_id: int.parse(state.uri.queryParameters['plates_type_id']!),
                    province_id: int.parse(state.uri.queryParameters['province_id']!),
                    vehicle_type_id: int.parse(state.uri.queryParameters['vehicle_type_id']!),
                    limit: int.parse(state.uri.queryParameters['limit']!),
                    offset: int.parse(state.uri.queryParameters['offset']!),
                  ),
                  routes: <RouteBase>[
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: 'plates_details_screen/:platesId',
                      builder: (context, state) => PlatesDetailsScreen(platesId: int.parse(state.pathParameters['platesId']!)),
                    ),
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: 'store_details_screen/:storeId',
                      builder: (context, state) => StoreDetailsScreen(storeId: int.parse(state.pathParameters['storeId']!)),
                    ),
                  ],
                ),
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: 'plates_details_screen/:platesId',
                  builder: (context, state) => PlatesDetailsScreen(platesId: int.parse(state.pathParameters['platesId']!)),
                ),
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: 'store_details_screen/:storeId',
                  builder: (context, state) => StoreDetailsScreen(storeId: int.parse(state.pathParameters['storeId']!)),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/search_tab',
              builder: (context, state) => const SearchTab(),
              routes: <RouteBase>[],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/explore_tab',
              builder: (context, state) => const ExploreTab(),
              routes: <RouteBase>[],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/chats_tab',
              builder: (context, state) => ChatsTab(),
              routes: <RouteBase>[],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            StatefulShellRoute.indexedStack(
              builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
                return YouTab(navigationShell: navigationShell);
              },
              branches: <StatefulShellBranch>[
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/your_store_drawer',
                      builder: (context, state) => YourStoreDrawer(),
                      routes: <RouteBase>[
                        GoRoute(
                          parentNavigatorKey: _rootNavigatorKey,
                          path: 'select_province_screen',
                          builder: (context, state) => const SelectProvinceScreen(),
                          routes: <RouteBase>[
                            GoRoute(
                              parentNavigatorKey: _rootNavigatorKey,
                              path: 'fill_plates_details_screen',
                              builder: (context, state) => const FillPlatesDetailsScreen(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/transfer_drawer',
                      builder: (context, state) => TransferDrawer(),
                      routes: <RouteBase>[],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/liked_drawer',
                      builder: (context, state) => LikedDrawer(),
                      routes: <RouteBase>[],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/saved_drawer',
                      builder: (context, state) => SavedDrawer(),
                      routes: <RouteBase>[],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/account_drawer',
                      builder: (context, state) => AccountDrawer(),
                      routes: <RouteBase>[
                        GoRoute(
                          parentNavigatorKey: _rootNavigatorKey,
                          path: 'change_password_screen',
                          builder: (context, state) => const ChangePasswordScreen(),
                          routes: <RouteBase>[
                            GoRoute(
                              parentNavigatorKey: _rootNavigatorKey,
                              path: 'new_password_screen',
                              builder: (context, state) => const NewPasswordScreen(),
                            ),
                          ],
                        ),
                        GoRoute(
                          parentNavigatorKey: _rootNavigatorKey,
                          path: 'delete_account_screen',
                          builder: (context, state) => DeleteAccountScreen(),
                        ),
                      ],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/settings_drawer',
                      builder: (context, state) => SettingsDrawer(),
                      routes: <RouteBase>[],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/help_and_support_drawer',
                      builder: (context, state) => HelpAndSupportDrawer(),
                      routes: <RouteBase>[],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/plates_filter_screen',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const PlatesFilterScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(Tween(begin: const Offset(0.0, 1.0), end: Offset.zero).chain(CurveTween(curve: Curves.ease))),
              child: child,
            );
          },
        );
      },
    ),
  ],
);

final ValueNotifier<RoutingConfig> routeConfig = ValueNotifier<RoutingConfig>(_loadingRoute);

final GoRouter goRouter = GoRouter.routingConfig(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  routingConfig: routeConfig,
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorScreen(),
);
