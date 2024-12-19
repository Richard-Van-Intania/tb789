import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'initialize.dart';
import 'provider/authentication_providers.dart';
import 'provider/settings_providers.dart';
import 'routes.dart';
import 'util.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  await initialize();
  runApp(const ProviderScope(child: Application()));
}

class Application extends StatefulHookConsumerWidget {
  const Application({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(autoSignInProvider, (previous, next) {
      next.whenData((int statusCode) {
        if (statusCode == 200) {
          routeConfig.value = mainRoute;
        } else {
          routeConfig.value = signInRoute;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Locale locale = ref.watch(updateLocaleProvider);
    final ThemeMode themeMode = ref.watch(updateThemeModeProvider);
    final TextTheme textTheme = createTextTheme(context, 'Noto Sans Thai', 'Noto Sans Thai');
    final MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      // debugShowCheckedModeBanner: true,
      title: 'TB789',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      // locale: th,
      // locale: en,
      themeMode: themeMode,
      // themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.light,
      theme: theme.light(),
      darkTheme: theme.dark(),
      routerConfig: goRouter,
    );
  }
}
