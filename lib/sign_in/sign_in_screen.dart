import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../initialize.dart';
import '../provider/authentication_providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInScreen extends StatefulHookConsumerWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(autoSignInProvider, (previous, next) {
      next.whenData((int statusCode) {
        switch (statusCode) {
          case 500:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.internal_server_error), behavior: SnackBarBehavior.floating));
          case 400:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.eopnc), behavior: SnackBarBehavior.floating));
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final autoSignIn = ref.watch(autoSignInProvider);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: autoSignIn.when(
          data: (int data) => SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              child: Container(
                  constraints: constraints,
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 24.0),
                        Text(
                          AppLocalizations.of(context)!.hello_tb789,
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24.0),
                        Text(
                          AppLocalizations.of(context)!.tcpm,
                          style: Theme.of(context).textTheme.apply(bodyColor: Theme.of(context).colorScheme.onSurfaceVariant).titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24.0),
                        Text(
                          AppLocalizations.of(context)!.free_unlimited,
                          style: Theme.of(context).textTheme.apply(bodyColor: Theme.of(context).colorScheme.onSurfaceVariant).titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          AppLocalizations.of(context)!.buy_sell,
                          style: Theme.of(context).textTheme.apply(bodyColor: Theme.of(context).colorScheme.onSurfaceVariant).titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 40.0),
                        TextFormField(
                          maxLength: 64,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.email,
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  emailController.clear();
                                },
                                icon: const Icon(Icons.cancel_outlined)),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.enter_your_email;
                            } else if (!EmailValidator.validate(value.trim().toLowerCase())) {
                              return AppLocalizations.of(context)!.email_not_correct;
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) => setState(() {}),
                          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                        ),
                        const SizedBox(height: 32.0),
                        TextFormField(
                          maxLength: 64,
                          obscureText: true,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.password,
                            helperText: AppLocalizations.of(context)!.must_be,
                            helperMaxLines: 3,
                            errorMaxLines: 3,
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  passwordController.clear();
                                },
                                icon: const Icon(Icons.cancel_outlined)),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.enter_your_password;
                            } else if (!regex.hasMatch(value.trim())) {
                              return AppLocalizations.of(context)!.must_be;
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) => setState(() {}),
                          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                        ),
                        const SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {
                                context.go('/fps');
                              },
                              child: Text(AppLocalizations.of(context)!.forgot_password)),
                        ),
                        const SizedBox(height: 24.0),
                        OutlinedButton(
                          onPressed: () {
                            context.go('/caes');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text(AppLocalizations.of(context)!.create_new_account)],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        FilledButton(
                          onPressed: (snapshot.connectionState == ConnectionState.waiting)
                              ? null
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    pendingFetch.value = ref.read(autoSignInProvider.notifier).fetch(emailController.text.trim().toLowerCase(), passwordController.text.trim());
                                  }
                                },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text(AppLocalizations.of(context)!.sign_in)],
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Row(
                          children: [
                            const Expanded(child: Divider(endIndent: 16.0)),
                            Text(
                              AppLocalizations.of(context)!.or,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const Expanded(child: Divider(indent: 16.0))
                          ],
                        ),
                        const SizedBox(height: 24.0),
                        GestureDetector(
                          onTap: () {},
                          child: Image(height: 44.0, image: AssetImage(Theme.of(context).brightness == Brightness.light ? 'assets/images/web_light_rd_SI@4x.png' : 'assets/images/web_dark_rd_SI@4x.png')),
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    ),
                  )),
            ),
          ),
          error: (Object error, StackTrace stackTrace) => Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: 24.0),
            Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
          ]),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
