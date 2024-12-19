import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../initialize.dart';

part 'settings_providers.g.dart';

@riverpod
class UpdateLocale extends _$UpdateLocale {
  @override
  Locale build() {
    final String? languageCode = prefs.getString('languageCode');
    return languageCode == null ? th : Locale(languageCode);
  }

  Future<void> update(Locale locale) async {
    await prefs.setString('languageCode', locale.languageCode);
    state = locale;
  }
}

@riverpod
class UpdateThemeMode extends _$UpdateThemeMode {
  @override
  ThemeMode build() {
    final String? themeMode = prefs.getString('themeMode');
    if (themeMode == null) {
      return ThemeMode.system;
    } else {
      return switch (themeMode) {
        'system' => ThemeMode.system,
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system,
      };
    }
  }

  Future<void> update(ThemeMode themeMode) async {
    await prefs.setString('themeMode', themeMode.name);
    state = themeMode;
  }
}

enum SelectView { card, list }

@Riverpod(keepAlive: true)
class UpdateView extends _$UpdateView {
  @override
  SelectView build() {
    final String? selectView = prefs.getString('selectView');
    if (selectView == null) {
      return SelectView.card;
    } else if (selectView == SelectView.card.name) {
      return SelectView.card;
    } else {
      return SelectView.list;
    }
  }

  Future<void> update(SelectView selectView) async {
    await prefs.setString('selectView', selectView.name);
    state = selectView;
  }
}

@Riverpod(keepAlive: true)
class VirtualPlatesOnly extends _$VirtualPlatesOnly {
  @override
  bool build() {
    final bool? virtualPlatesOnly = prefs.getBool('virtualPlatesOnly');
    return virtualPlatesOnly ?? false;
  }

  Future<void> update(bool virtualPlatesOnly) async {
    await prefs.setBool('virtualPlatesOnly', virtualPlatesOnly);
    state = virtualPlatesOnly;
  }
}

@Riverpod(keepAlive: true)
class FilterPlatesType extends _$FilterPlatesType {
  @override
  Set<String> build() {
    final List<String>? filterPlatesType = prefs.getStringList('filterPlatesType');
    return filterPlatesType == null ? PlatesType.values.map((toElement) => toElement.name).toSet() : filterPlatesType.toSet();
  }

  Future<void> add(PlatesType platesType) async {
    state.add(platesType.name);
    await prefs.setStringList('filterPlatesType', state.toList());
    ref.notifyListeners();
  }

  Future<void> delete(PlatesType platesType) async {
    state.remove(platesType.name);
    await prefs.setStringList('filterPlatesType', state.toList());
    ref.notifyListeners();
  }
}

@Riverpod(keepAlive: true)
class FilterProvince extends _$FilterProvince {
  @override
  Set<String> build() {
    final List<String>? filterProvince = prefs.getStringList('filterProvince');
    return filterProvince == null ? Province.values.map((toElement) => toElement.name).toSet() : filterProvince.toSet();
  }

  Future<void> add(Province province) async {
    state.add(province.name);
    await prefs.setStringList('filterProvince', state.toList());
    ref.notifyListeners();
  }

  Future<void> delete(Province province) async {
    state.remove(province.name);
    await prefs.setStringList('filterProvince', state.toList());
    ref.notifyListeners();
  }

  Future<void> selectUnSelectAll() async {
    final Set<String> previous = state;
    if (previous.isEmpty) {
      final iter = Province.values.map((element) => element.name);
      await prefs.setStringList('filterProvince', iter.toList());
      state = iter.toSet();
    } else {
      await prefs.setStringList('filterProvince', <String>[]);
      state = <String>{};
    }
  }
}

enum SortBy { priceLowToHigh, priceHighToLow, reacts, random, addDate }

@Riverpod(keepAlive: true)
class UpdateSortBy extends _$UpdateSortBy {
  @override
  SortBy build() {
    final String? sortBy = prefs.getString('sortBy');
    if (sortBy == null) {
      return SortBy.priceLowToHigh;
    } else {
      return switch (sortBy) {
        'priceLowToHigh' => SortBy.priceLowToHigh,
        'priceHighToLow' => SortBy.priceHighToLow,
        'reacts' => SortBy.reacts,
        'random' => SortBy.random,
        'addDate' => SortBy.addDate,
        _ => SortBy.addDate,
      };
    }
  }

  Future<void> update(SortBy sortBy) async {
    await prefs.setString('sortBy', sortBy.name);
    state = sortBy;
  }
}

@Riverpod(keepAlive: true)
class UpdatePriceUnder extends _$UpdatePriceUnder {
  @override
  int build() {
    final int? priceUnder = prefs.getInt('priceUnder');
    return priceUnder ?? 100000000;
  }

  Future<void> setNewPrice(int priceUnder) async {
    await prefs.setInt('priceUnder', priceUnder);
    state = priceUnder;
  }
}
