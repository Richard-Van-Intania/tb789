import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
class DisplaySnackBar extends _$DisplaySnackBar {
  @override
  Future<String> build() async {
    return '';
  }

  Future<void> display(String message) async {
    state = AsyncData(message);
  }
}
