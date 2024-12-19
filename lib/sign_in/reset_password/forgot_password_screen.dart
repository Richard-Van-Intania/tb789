import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../../initialize.dart';
import '../../provider/authentication_providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPasswordScreen extends StatefulHookConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _formFieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(forgotPasswordProvider, (previous, next) {
      next.whenData((data) {
        switch (data.statusCode) {
          case 500:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.internal_server_error), behavior: SnackBarBehavior.floating));
          case 400:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.email_not_correct), behavior: SnackBarBehavior.floating));
          case 200:
            context.go('/fps/cvcfs');
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final forgotPassword = ref.watch(forgotPasswordProvider);
    final emailController = useTextEditingController();
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.reset_password)),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: forgotPassword.when(
            data: (data) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 32.0),
                    TextFormField(
                      key: _formFieldKey,
                      maxLength: 64,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.email,
                        helperText: AppLocalizations.of(context)!.yembatrvc,
                        helperMaxLines: 3,
                        errorMaxLines: 3,
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
                    FilledButton.tonal(
                        onPressed: (snapshot.connectionState == ConnectionState.waiting)
                            ? null
                            : () {
                                if (_formFieldKey.currentState!.validate()) {
                                  pendingFetch.value = ref.read(forgotPasswordProvider.notifier).fetch(emailController.text.trim().toLowerCase());
                                }
                              },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text(AppLocalizations.of(context)!.next)],
                        )),
                  ],
                ),
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
      ),
    );
  }
}
