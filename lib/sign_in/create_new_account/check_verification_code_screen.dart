import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../../initialize.dart';
import '../../provider/authentication_providers.dart';

class CheckVerificationCodeScreen extends StatefulHookConsumerWidget {
  const CheckVerificationCodeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckVerificationCodeScreenState();
}

class _CheckVerificationCodeScreenState extends ConsumerState<CheckVerificationCodeScreen> {
  final _formFieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(checkVerificationCodeProvider, (previous, next) {
      next.whenData((data) {
        switch (data.statusCode) {
          case 500:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.internal_server_error), behavior: SnackBarBehavior.floating));
          case 400:
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.vcnc), behavior: SnackBarBehavior.floating));
          case 200:
            context.go('/caes/cvcs/cnas');
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final checkAvailabilityEmail = ref.watch(checkAvailabilityEmailProvider);
    final codeController = useTextEditingController();
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.create_new_account),
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: checkAvailabilityEmail.when(
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
                      maxLength: 6,
                      controller: codeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.verification_code,
                        helperText: '${AppLocalizations.of(context)!.reference}: ${data.model.reference}',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              codeController.clear();
                            },
                            icon: const Icon(Icons.cancel_outlined)),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!.evc;
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
                                  pendingFetch.value = ref.read(checkVerificationCodeProvider.notifier).fetch(int.parse(codeController.text.trim().replaceAll(regInt, '')));
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
