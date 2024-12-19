import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../initialize.dart';
import '../provider/authentication_providers.dart';
import '../provider/providers.dart';

class ChangePasswordScreen extends StatefulHookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _formFieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(validateCurrentPasswordProvider, (previous, next) {
      next.whenData((statusCode) {
        switch (statusCode) {
          case 400:
            ref.read(displaySnackBarProvider.notifier).display(AppLocalizations.of(context)!.ypnc);
          case 200:
            context.go('/account_drawer/change_password_screen/new_password_screen');
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final validateCurrentPassword = ref.watch(validateCurrentPasswordProvider);
    final passwordController = useTextEditingController();
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.change_password),
      ),
      body: SafeArea(
        child: Center(
          child: validateCurrentPassword.when(
            data: (int data) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 32.0),
                  TextFormField(
                    key: _formFieldKey,
                    maxLength: 64,
                    obscureText: true,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.current_password,
                      helperText: AppLocalizations.of(context)!.eycp,
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
                        return AppLocalizations.of(context)!.eycp;
                      } else if (!regex.hasMatch(value.trim())) {
                        return AppLocalizations.of(context)!.must_be;
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
                                pendingFetch.value = ref.read(validateCurrentPasswordProvider.notifier).validate(passwordController.text.trim());
                              }
                            },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(AppLocalizations.of(context)!.next)],
                      )),
                ],
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
