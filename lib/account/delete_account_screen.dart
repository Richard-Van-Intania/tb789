import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../initialize.dart';
import '../provider/authentication_providers.dart';

class DeleteAccountScreen extends StatefulHookConsumerWidget {
  const DeleteAccountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends ConsumerState<DeleteAccountScreen> {
  final _formFieldKey = GlobalKey<FormFieldState>();
  @override
  void initState() {
    ref.read(deleteAccountProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.delete_account)),
      body: SafeArea(
        child: Center(
          child: Padding(
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
                    controller: textController,
                    maxLength: 14,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: delete_account,
                      helperText: AppLocalizations.of(context)!.ptda,
                      helperMaxLines: 3,
                      errorMaxLines: 3,
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            textController.clear();
                          },
                          icon: const Icon(Icons.cancel_outlined)),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.ptda;
                      } else if (value != delete_account) {
                        return AppLocalizations.of(context)!.ytnc;
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) => setState(() {}),
                    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                  ),
                  const SizedBox(height: 32.0),
                  FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.error,
                        foregroundColor: Theme.of(context).colorScheme.onError,
                      ),
                      onPressed: (snapshot.connectionState == ConnectionState.waiting)
                          ? null
                          : () {
                              if (_formFieldKey.currentState!.validate()) {
                                showDialog<bool>(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: Text(AppLocalizations.of(context)!.dac),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () => Navigator.pop(context, false),
                                        child: Text(AppLocalizations.of(context)!.cancel),
                                      ),
                                      FilledButton(
                                        style: FilledButton.styleFrom(
                                          backgroundColor: Theme.of(context).colorScheme.error,
                                          foregroundColor: Theme.of(context).colorScheme.onError,
                                        ),
                                        onPressed: () => Navigator.pop(context, true),
                                        child: Text(AppLocalizations.of(context)!.delete),
                                      ),
                                    ],
                                  ),
                                ).then((onValue) {
                                  if (onValue != null && onValue) {
                                    pendingFetch.value = ref.read(deleteAccountProvider.notifier).fetch();
                                  }
                                });
                              }
                            },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(AppLocalizations.of(context)!.delete_account)],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
