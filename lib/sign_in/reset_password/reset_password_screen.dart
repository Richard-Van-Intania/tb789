import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../../initialize.dart';
import '../../provider/authentication_providers.dart';

class ResetPasswordScreen extends StatefulHookConsumerWidget {
  const ResetPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(resetPasswordProvider, (previous, next) {
      next.whenData((data) {
        switch (data.statusCode) {
          case 500:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.internal_server_error), behavior: SnackBarBehavior.floating));
          case 400:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.eopnc), behavior: SnackBarBehavior.floating));
          case 200:
            context.go('/');
            ref.invalidate(autoSignInProvider);
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final resetPassword = ref.watch(resetPasswordProvider);
    final passwordController1 = useTextEditingController();
    final passwordController2 = useTextEditingController();
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.reset_password),
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: resetPassword.when(
            data: (data) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 32.0),
                        TextFormField(
                          maxLength: 64,
                          obscureText: true,
                          controller: passwordController1,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.new_password,
                            helperText: AppLocalizations.of(context)!.must_be,
                            helperMaxLines: 3,
                            errorMaxLines: 3,
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  passwordController1.clear();
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
                        const SizedBox(height: 32.0),
                        TextFormField(
                          maxLength: 64,
                          obscureText: true,
                          controller: passwordController2,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.confirm_new_password,
                            helperText: AppLocalizations.of(context)!.msypm,
                            helperMaxLines: 3,
                            errorMaxLines: 3,
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  passwordController2.clear();
                                },
                                icon: const Icon(Icons.cancel_outlined)),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.enter_your_password;
                            } else if (!regex.hasMatch(value.trim())) {
                              return AppLocalizations.of(context)!.must_be;
                            } else if (passwordController1.text.trim() != passwordController2.text.trim()) {
                              return AppLocalizations.of(context)!.pdm;
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) => setState(() {}),
                          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                        ),
                        const SizedBox(height: 32.0),
                        FilledButton(
                            onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate() && (passwordController1.text.trim() == passwordController2.text.trim())) {
                                      pendingFetch.value = ref.read(resetPasswordProvider.notifier).fetch(passwordController1.text.trim());
                                    }
                                  },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text(AppLocalizations.of(context)!.ok)],
                            )),
                      ],
                    ),
                  ),
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
