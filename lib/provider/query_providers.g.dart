// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$queryPatternDetailsExploreHash() => r'f3eb315057c9fc387a26c56f0dd0c07e7274d113';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [queryPatternDetailsExplore].
@ProviderFor(queryPatternDetailsExplore)
const queryPatternDetailsExploreProvider = QueryPatternDetailsExploreFamily();

/// See also [queryPatternDetailsExplore].
class QueryPatternDetailsExploreFamily extends Family<AsyncValue<UnwrapResponse<PlatesGroup>>> {
  /// See also [queryPatternDetailsExplore].
  const QueryPatternDetailsExploreFamily();

  /// See also [queryPatternDetailsExplore].
  QueryPatternDetailsExploreProvider call(
    String path,
    String pattern,
    int plates_type_id,
    int province_id,
    int vehicle_type_id,
    int limit,
    int offset,
  ) {
    return QueryPatternDetailsExploreProvider(
      path,
      pattern,
      plates_type_id,
      province_id,
      vehicle_type_id,
      limit,
      offset,
    );
  }

  @override
  QueryPatternDetailsExploreProvider getProviderOverride(
    covariant QueryPatternDetailsExploreProvider provider,
  ) {
    return call(
      provider.path,
      provider.pattern,
      provider.plates_type_id,
      provider.province_id,
      provider.vehicle_type_id,
      provider.limit,
      provider.offset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'queryPatternDetailsExploreProvider';
}

/// See also [queryPatternDetailsExplore].
class QueryPatternDetailsExploreProvider extends AutoDisposeFutureProvider<UnwrapResponse<PlatesGroup>> {
  /// See also [queryPatternDetailsExplore].
  QueryPatternDetailsExploreProvider(
    String path,
    String pattern,
    int plates_type_id,
    int province_id,
    int vehicle_type_id,
    int limit,
    int offset,
  ) : this._internal(
          (ref) => queryPatternDetailsExplore(
            ref as QueryPatternDetailsExploreRef,
            path,
            pattern,
            plates_type_id,
            province_id,
            vehicle_type_id,
            limit,
            offset,
          ),
          from: queryPatternDetailsExploreProvider,
          name: r'queryPatternDetailsExploreProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$queryPatternDetailsExploreHash,
          dependencies: QueryPatternDetailsExploreFamily._dependencies,
          allTransitiveDependencies: QueryPatternDetailsExploreFamily._allTransitiveDependencies,
          path: path,
          pattern: pattern,
          plates_type_id: plates_type_id,
          province_id: province_id,
          vehicle_type_id: vehicle_type_id,
          limit: limit,
          offset: offset,
        );

  QueryPatternDetailsExploreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.pattern,
    required this.plates_type_id,
    required this.province_id,
    required this.vehicle_type_id,
    required this.limit,
    required this.offset,
  }) : super.internal();

  final String path;
  final String pattern;
  final int plates_type_id;
  final int province_id;
  final int vehicle_type_id;
  final int limit;
  final int offset;

  @override
  Override overrideWith(
    FutureOr<UnwrapResponse<PlatesGroup>> Function(QueryPatternDetailsExploreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QueryPatternDetailsExploreProvider._internal(
        (ref) => create(ref as QueryPatternDetailsExploreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        pattern: pattern,
        plates_type_id: plates_type_id,
        province_id: province_id,
        vehicle_type_id: vehicle_type_id,
        limit: limit,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> createElement() {
    return _QueryPatternDetailsExploreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryPatternDetailsExploreProvider && other.path == path && other.pattern == pattern && other.plates_type_id == plates_type_id && other.province_id == province_id && other.vehicle_type_id == vehicle_type_id && other.limit == limit && other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, pattern.hashCode);
    hash = _SystemHash.combine(hash, plates_type_id.hashCode);
    hash = _SystemHash.combine(hash, province_id.hashCode);
    hash = _SystemHash.combine(hash, vehicle_type_id.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QueryPatternDetailsExploreRef on AutoDisposeFutureProviderRef<UnwrapResponse<PlatesGroup>> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `pattern` of this provider.
  String get pattern;

  /// The parameter `plates_type_id` of this provider.
  int get plates_type_id;

  /// The parameter `province_id` of this provider.
  int get province_id;

  /// The parameter `vehicle_type_id` of this provider.
  int get vehicle_type_id;

  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `offset` of this provider.
  int get offset;
}

class _QueryPatternDetailsExploreProviderElement extends AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> with QueryPatternDetailsExploreRef {
  _QueryPatternDetailsExploreProviderElement(super.provider);

  @override
  String get path => (origin as QueryPatternDetailsExploreProvider).path;
  @override
  String get pattern => (origin as QueryPatternDetailsExploreProvider).pattern;
  @override
  int get plates_type_id => (origin as QueryPatternDetailsExploreProvider).plates_type_id;
  @override
  int get province_id => (origin as QueryPatternDetailsExploreProvider).province_id;
  @override
  int get vehicle_type_id => (origin as QueryPatternDetailsExploreProvider).vehicle_type_id;
  @override
  int get limit => (origin as QueryPatternDetailsExploreProvider).limit;
  @override
  int get offset => (origin as QueryPatternDetailsExploreProvider).offset;
}

String _$addRemoveLikedPlatesHash() => r'b4aef644ab11e82fd5380beb0d9c2f76d595bc9e';

/// See also [addRemoveLikedPlates].
@ProviderFor(addRemoveLikedPlates)
const addRemoveLikedPlatesProvider = AddRemoveLikedPlatesFamily();

/// See also [addRemoveLikedPlates].
class AddRemoveLikedPlatesFamily extends Family<AsyncValue<int>> {
  /// See also [addRemoveLikedPlates].
  const AddRemoveLikedPlatesFamily();

  /// See also [addRemoveLikedPlates].
  AddRemoveLikedPlatesProvider call(
    int plates_id,
    bool value,
  ) {
    return AddRemoveLikedPlatesProvider(
      plates_id,
      value,
    );
  }

  @override
  AddRemoveLikedPlatesProvider getProviderOverride(
    covariant AddRemoveLikedPlatesProvider provider,
  ) {
    return call(
      provider.plates_id,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'addRemoveLikedPlatesProvider';
}

/// See also [addRemoveLikedPlates].
class AddRemoveLikedPlatesProvider extends AutoDisposeFutureProvider<int> {
  /// See also [addRemoveLikedPlates].
  AddRemoveLikedPlatesProvider(
    int plates_id,
    bool value,
  ) : this._internal(
          (ref) => addRemoveLikedPlates(
            ref as AddRemoveLikedPlatesRef,
            plates_id,
            value,
          ),
          from: addRemoveLikedPlatesProvider,
          name: r'addRemoveLikedPlatesProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$addRemoveLikedPlatesHash,
          dependencies: AddRemoveLikedPlatesFamily._dependencies,
          allTransitiveDependencies: AddRemoveLikedPlatesFamily._allTransitiveDependencies,
          plates_id: plates_id,
          value: value,
        );

  AddRemoveLikedPlatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plates_id,
    required this.value,
  }) : super.internal();

  final int plates_id;
  final bool value;

  @override
  Override overrideWith(
    FutureOr<int> Function(AddRemoveLikedPlatesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddRemoveLikedPlatesProvider._internal(
        (ref) => create(ref as AddRemoveLikedPlatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plates_id: plates_id,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _AddRemoveLikedPlatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddRemoveLikedPlatesProvider && other.plates_id == plates_id && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plates_id.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddRemoveLikedPlatesRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `plates_id` of this provider.
  int get plates_id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _AddRemoveLikedPlatesProviderElement extends AutoDisposeFutureProviderElement<int> with AddRemoveLikedPlatesRef {
  _AddRemoveLikedPlatesProviderElement(super.provider);

  @override
  int get plates_id => (origin as AddRemoveLikedPlatesProvider).plates_id;
  @override
  bool get value => (origin as AddRemoveLikedPlatesProvider).value;
}

String _$addRemoveSavedPlatesHash() => r'23c9d57de5e63ce3263048d862626300489d3b45';

/// See also [addRemoveSavedPlates].
@ProviderFor(addRemoveSavedPlates)
const addRemoveSavedPlatesProvider = AddRemoveSavedPlatesFamily();

/// See also [addRemoveSavedPlates].
class AddRemoveSavedPlatesFamily extends Family<AsyncValue<int>> {
  /// See also [addRemoveSavedPlates].
  const AddRemoveSavedPlatesFamily();

  /// See also [addRemoveSavedPlates].
  AddRemoveSavedPlatesProvider call(
    int plates_id,
    bool value,
  ) {
    return AddRemoveSavedPlatesProvider(
      plates_id,
      value,
    );
  }

  @override
  AddRemoveSavedPlatesProvider getProviderOverride(
    covariant AddRemoveSavedPlatesProvider provider,
  ) {
    return call(
      provider.plates_id,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'addRemoveSavedPlatesProvider';
}

/// See also [addRemoveSavedPlates].
class AddRemoveSavedPlatesProvider extends AutoDisposeFutureProvider<int> {
  /// See also [addRemoveSavedPlates].
  AddRemoveSavedPlatesProvider(
    int plates_id,
    bool value,
  ) : this._internal(
          (ref) => addRemoveSavedPlates(
            ref as AddRemoveSavedPlatesRef,
            plates_id,
            value,
          ),
          from: addRemoveSavedPlatesProvider,
          name: r'addRemoveSavedPlatesProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$addRemoveSavedPlatesHash,
          dependencies: AddRemoveSavedPlatesFamily._dependencies,
          allTransitiveDependencies: AddRemoveSavedPlatesFamily._allTransitiveDependencies,
          plates_id: plates_id,
          value: value,
        );

  AddRemoveSavedPlatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plates_id,
    required this.value,
  }) : super.internal();

  final int plates_id;
  final bool value;

  @override
  Override overrideWith(
    FutureOr<int> Function(AddRemoveSavedPlatesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddRemoveSavedPlatesProvider._internal(
        (ref) => create(ref as AddRemoveSavedPlatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plates_id: plates_id,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _AddRemoveSavedPlatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddRemoveSavedPlatesProvider && other.plates_id == plates_id && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plates_id.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddRemoveSavedPlatesRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `plates_id` of this provider.
  int get plates_id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _AddRemoveSavedPlatesProviderElement extends AutoDisposeFutureProviderElement<int> with AddRemoveSavedPlatesRef {
  _AddRemoveSavedPlatesProviderElement(super.provider);

  @override
  int get plates_id => (origin as AddRemoveSavedPlatesProvider).plates_id;
  @override
  bool get value => (origin as AddRemoveSavedPlatesProvider).value;
}

String _$addRemoveLikedStoreHash() => r'2b9eb5b42b2804da5b65ca2a98bea3c1b89238e7';

/// See also [addRemoveLikedStore].
@ProviderFor(addRemoveLikedStore)
const addRemoveLikedStoreProvider = AddRemoveLikedStoreFamily();

/// See also [addRemoveLikedStore].
class AddRemoveLikedStoreFamily extends Family<AsyncValue<int>> {
  /// See also [addRemoveLikedStore].
  const AddRemoveLikedStoreFamily();

  /// See also [addRemoveLikedStore].
  AddRemoveLikedStoreProvider call(
    int store_id,
    bool value,
  ) {
    return AddRemoveLikedStoreProvider(
      store_id,
      value,
    );
  }

  @override
  AddRemoveLikedStoreProvider getProviderOverride(
    covariant AddRemoveLikedStoreProvider provider,
  ) {
    return call(
      provider.store_id,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'addRemoveLikedStoreProvider';
}

/// See also [addRemoveLikedStore].
class AddRemoveLikedStoreProvider extends AutoDisposeFutureProvider<int> {
  /// See also [addRemoveLikedStore].
  AddRemoveLikedStoreProvider(
    int store_id,
    bool value,
  ) : this._internal(
          (ref) => addRemoveLikedStore(
            ref as AddRemoveLikedStoreRef,
            store_id,
            value,
          ),
          from: addRemoveLikedStoreProvider,
          name: r'addRemoveLikedStoreProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$addRemoveLikedStoreHash,
          dependencies: AddRemoveLikedStoreFamily._dependencies,
          allTransitiveDependencies: AddRemoveLikedStoreFamily._allTransitiveDependencies,
          store_id: store_id,
          value: value,
        );

  AddRemoveLikedStoreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.store_id,
    required this.value,
  }) : super.internal();

  final int store_id;
  final bool value;

  @override
  Override overrideWith(
    FutureOr<int> Function(AddRemoveLikedStoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddRemoveLikedStoreProvider._internal(
        (ref) => create(ref as AddRemoveLikedStoreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        store_id: store_id,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _AddRemoveLikedStoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddRemoveLikedStoreProvider && other.store_id == store_id && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, store_id.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddRemoveLikedStoreRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `store_id` of this provider.
  int get store_id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _AddRemoveLikedStoreProviderElement extends AutoDisposeFutureProviderElement<int> with AddRemoveLikedStoreRef {
  _AddRemoveLikedStoreProviderElement(super.provider);

  @override
  int get store_id => (origin as AddRemoveLikedStoreProvider).store_id;
  @override
  bool get value => (origin as AddRemoveLikedStoreProvider).value;
}

String _$addRemoveSavedStoreHash() => r'2e289425b0fcfdd81adfbb2128fd838f366cbd6e';

/// See also [addRemoveSavedStore].
@ProviderFor(addRemoveSavedStore)
const addRemoveSavedStoreProvider = AddRemoveSavedStoreFamily();

/// See also [addRemoveSavedStore].
class AddRemoveSavedStoreFamily extends Family<AsyncValue<int>> {
  /// See also [addRemoveSavedStore].
  const AddRemoveSavedStoreFamily();

  /// See also [addRemoveSavedStore].
  AddRemoveSavedStoreProvider call(
    int store_id,
    bool value,
  ) {
    return AddRemoveSavedStoreProvider(
      store_id,
      value,
    );
  }

  @override
  AddRemoveSavedStoreProvider getProviderOverride(
    covariant AddRemoveSavedStoreProvider provider,
  ) {
    return call(
      provider.store_id,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'addRemoveSavedStoreProvider';
}

/// See also [addRemoveSavedStore].
class AddRemoveSavedStoreProvider extends AutoDisposeFutureProvider<int> {
  /// See also [addRemoveSavedStore].
  AddRemoveSavedStoreProvider(
    int store_id,
    bool value,
  ) : this._internal(
          (ref) => addRemoveSavedStore(
            ref as AddRemoveSavedStoreRef,
            store_id,
            value,
          ),
          from: addRemoveSavedStoreProvider,
          name: r'addRemoveSavedStoreProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$addRemoveSavedStoreHash,
          dependencies: AddRemoveSavedStoreFamily._dependencies,
          allTransitiveDependencies: AddRemoveSavedStoreFamily._allTransitiveDependencies,
          store_id: store_id,
          value: value,
        );

  AddRemoveSavedStoreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.store_id,
    required this.value,
  }) : super.internal();

  final int store_id;
  final bool value;

  @override
  Override overrideWith(
    FutureOr<int> Function(AddRemoveSavedStoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddRemoveSavedStoreProvider._internal(
        (ref) => create(ref as AddRemoveSavedStoreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        store_id: store_id,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _AddRemoveSavedStoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddRemoveSavedStoreProvider && other.store_id == store_id && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, store_id.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddRemoveSavedStoreRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `store_id` of this provider.
  int get store_id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _AddRemoveSavedStoreProviderElement extends AutoDisposeFutureProviderElement<int> with AddRemoveSavedStoreRef {
  _AddRemoveSavedStoreProviderElement(super.provider);

  @override
  int get store_id => (origin as AddRemoveSavedStoreProvider).store_id;
  @override
  bool get value => (origin as AddRemoveSavedStoreProvider).value;
}

String _$queryPlatesInfoHash() => r'6889d086993846eb3287f7537364fb841d82a02a';

/// See also [queryPlatesInfo].
@ProviderFor(queryPlatesInfo)
const queryPlatesInfoProvider = QueryPlatesInfoFamily();

/// See also [queryPlatesInfo].
class QueryPlatesInfoFamily extends Family<AsyncValue<UnwrapResponse<PlatesGroup>>> {
  /// See also [queryPlatesInfo].
  const QueryPlatesInfoFamily();

  /// See also [queryPlatesInfo].
  QueryPlatesInfoProvider call(
    int plates_id,
  ) {
    return QueryPlatesInfoProvider(
      plates_id,
    );
  }

  @override
  QueryPlatesInfoProvider getProviderOverride(
    covariant QueryPlatesInfoProvider provider,
  ) {
    return call(
      provider.plates_id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'queryPlatesInfoProvider';
}

/// See also [queryPlatesInfo].
class QueryPlatesInfoProvider extends AutoDisposeFutureProvider<UnwrapResponse<PlatesGroup>> {
  /// See also [queryPlatesInfo].
  QueryPlatesInfoProvider(
    int plates_id,
  ) : this._internal(
          (ref) => queryPlatesInfo(
            ref as QueryPlatesInfoRef,
            plates_id,
          ),
          from: queryPlatesInfoProvider,
          name: r'queryPlatesInfoProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$queryPlatesInfoHash,
          dependencies: QueryPlatesInfoFamily._dependencies,
          allTransitiveDependencies: QueryPlatesInfoFamily._allTransitiveDependencies,
          plates_id: plates_id,
        );

  QueryPlatesInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plates_id,
  }) : super.internal();

  final int plates_id;

  @override
  Override overrideWith(
    FutureOr<UnwrapResponse<PlatesGroup>> Function(QueryPlatesInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QueryPlatesInfoProvider._internal(
        (ref) => create(ref as QueryPlatesInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plates_id: plates_id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> createElement() {
    return _QueryPlatesInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryPlatesInfoProvider && other.plates_id == plates_id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plates_id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QueryPlatesInfoRef on AutoDisposeFutureProviderRef<UnwrapResponse<PlatesGroup>> {
  /// The parameter `plates_id` of this provider.
  int get plates_id;
}

class _QueryPlatesInfoProviderElement extends AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> with QueryPlatesInfoRef {
  _QueryPlatesInfoProviderElement(super.provider);

  @override
  int get plates_id => (origin as QueryPlatesInfoProvider).plates_id;
}

String _$querySuggestionBackNumberHash() => r'6f9b935772b7ec719aaf7a4eef03a254cf4b6063';

/// See also [querySuggestionBackNumber].
@ProviderFor(querySuggestionBackNumber)
const querySuggestionBackNumberProvider = QuerySuggestionBackNumberFamily();

/// See also [querySuggestionBackNumber].
class QuerySuggestionBackNumberFamily extends Family<AsyncValue<UnwrapResponse<PlatesGroup>>> {
  /// See also [querySuggestionBackNumber].
  const QuerySuggestionBackNumberFamily();

  /// See also [querySuggestionBackNumber].
  QuerySuggestionBackNumberProvider call(
    int back_number,
    int limit,
    int offset,
  ) {
    return QuerySuggestionBackNumberProvider(
      back_number,
      limit,
      offset,
    );
  }

  @override
  QuerySuggestionBackNumberProvider getProviderOverride(
    covariant QuerySuggestionBackNumberProvider provider,
  ) {
    return call(
      provider.back_number,
      provider.limit,
      provider.offset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'querySuggestionBackNumberProvider';
}

/// See also [querySuggestionBackNumber].
class QuerySuggestionBackNumberProvider extends AutoDisposeFutureProvider<UnwrapResponse<PlatesGroup>> {
  /// See also [querySuggestionBackNumber].
  QuerySuggestionBackNumberProvider(
    int back_number,
    int limit,
    int offset,
  ) : this._internal(
          (ref) => querySuggestionBackNumber(
            ref as QuerySuggestionBackNumberRef,
            back_number,
            limit,
            offset,
          ),
          from: querySuggestionBackNumberProvider,
          name: r'querySuggestionBackNumberProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$querySuggestionBackNumberHash,
          dependencies: QuerySuggestionBackNumberFamily._dependencies,
          allTransitiveDependencies: QuerySuggestionBackNumberFamily._allTransitiveDependencies,
          back_number: back_number,
          limit: limit,
          offset: offset,
        );

  QuerySuggestionBackNumberProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.back_number,
    required this.limit,
    required this.offset,
  }) : super.internal();

  final int back_number;
  final int limit;
  final int offset;

  @override
  Override overrideWith(
    FutureOr<UnwrapResponse<PlatesGroup>> Function(QuerySuggestionBackNumberRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QuerySuggestionBackNumberProvider._internal(
        (ref) => create(ref as QuerySuggestionBackNumberRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        back_number: back_number,
        limit: limit,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> createElement() {
    return _QuerySuggestionBackNumberProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuerySuggestionBackNumberProvider && other.back_number == back_number && other.limit == limit && other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, back_number.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuerySuggestionBackNumberRef on AutoDisposeFutureProviderRef<UnwrapResponse<PlatesGroup>> {
  /// The parameter `back_number` of this provider.
  int get back_number;

  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `offset` of this provider.
  int get offset;
}

class _QuerySuggestionBackNumberProviderElement extends AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> with QuerySuggestionBackNumberRef {
  _QuerySuggestionBackNumberProviderElement(super.provider);

  @override
  int get back_number => (origin as QuerySuggestionBackNumberProvider).back_number;
  @override
  int get limit => (origin as QuerySuggestionBackNumberProvider).limit;
  @override
  int get offset => (origin as QuerySuggestionBackNumberProvider).offset;
}

String _$queryUsersInfoHash() => r'd3b60b45d29350e20a12cbb7ae2c04414a8f9615';

/// See also [queryUsersInfo].
@ProviderFor(queryUsersInfo)
const queryUsersInfoProvider = QueryUsersInfoFamily();

/// See also [queryUsersInfo].
class QueryUsersInfoFamily extends Family<AsyncValue<UnwrapResponse<UsersGroup>>> {
  /// See also [queryUsersInfo].
  const QueryUsersInfoFamily();

  /// See also [queryUsersInfo].
  QueryUsersInfoProvider call(
    int store_id,
  ) {
    return QueryUsersInfoProvider(
      store_id,
    );
  }

  @override
  QueryUsersInfoProvider getProviderOverride(
    covariant QueryUsersInfoProvider provider,
  ) {
    return call(
      provider.store_id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'queryUsersInfoProvider';
}

/// See also [queryUsersInfo].
class QueryUsersInfoProvider extends AutoDisposeFutureProvider<UnwrapResponse<UsersGroup>> {
  /// See also [queryUsersInfo].
  QueryUsersInfoProvider(
    int store_id,
  ) : this._internal(
          (ref) => queryUsersInfo(
            ref as QueryUsersInfoRef,
            store_id,
          ),
          from: queryUsersInfoProvider,
          name: r'queryUsersInfoProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$queryUsersInfoHash,
          dependencies: QueryUsersInfoFamily._dependencies,
          allTransitiveDependencies: QueryUsersInfoFamily._allTransitiveDependencies,
          store_id: store_id,
        );

  QueryUsersInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.store_id,
  }) : super.internal();

  final int store_id;

  @override
  Override overrideWith(
    FutureOr<UnwrapResponse<UsersGroup>> Function(QueryUsersInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QueryUsersInfoProvider._internal(
        (ref) => create(ref as QueryUsersInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        store_id: store_id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UnwrapResponse<UsersGroup>> createElement() {
    return _QueryUsersInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryUsersInfoProvider && other.store_id == store_id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, store_id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QueryUsersInfoRef on AutoDisposeFutureProviderRef<UnwrapResponse<UsersGroup>> {
  /// The parameter `store_id` of this provider.
  int get store_id;
}

class _QueryUsersInfoProviderElement extends AutoDisposeFutureProviderElement<UnwrapResponse<UsersGroup>> with QueryUsersInfoRef {
  _QueryUsersInfoProviderElement(super.provider);

  @override
  int get store_id => (origin as QueryUsersInfoProvider).store_id;
}

String _$queryUsersPlatesHash() => r'3369220b34229be0463ca5f6e6b49d996703305a';

/// See also [queryUsersPlates].
@ProviderFor(queryUsersPlates)
const queryUsersPlatesProvider = QueryUsersPlatesFamily();

/// See also [queryUsersPlates].
class QueryUsersPlatesFamily extends Family<AsyncValue<UnwrapResponse<PlatesGroup>>> {
  /// See also [queryUsersPlates].
  const QueryUsersPlatesFamily();

  /// See also [queryUsersPlates].
  QueryUsersPlatesProvider call(
    String path,
    int store_id,
    int limit,
    int offset,
  ) {
    return QueryUsersPlatesProvider(
      path,
      store_id,
      limit,
      offset,
    );
  }

  @override
  QueryUsersPlatesProvider getProviderOverride(
    covariant QueryUsersPlatesProvider provider,
  ) {
    return call(
      provider.path,
      provider.store_id,
      provider.limit,
      provider.offset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'queryUsersPlatesProvider';
}

/// See also [queryUsersPlates].
class QueryUsersPlatesProvider extends AutoDisposeFutureProvider<UnwrapResponse<PlatesGroup>> {
  /// See also [queryUsersPlates].
  QueryUsersPlatesProvider(
    String path,
    int store_id,
    int limit,
    int offset,
  ) : this._internal(
          (ref) => queryUsersPlates(
            ref as QueryUsersPlatesRef,
            path,
            store_id,
            limit,
            offset,
          ),
          from: queryUsersPlatesProvider,
          name: r'queryUsersPlatesProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$queryUsersPlatesHash,
          dependencies: QueryUsersPlatesFamily._dependencies,
          allTransitiveDependencies: QueryUsersPlatesFamily._allTransitiveDependencies,
          path: path,
          store_id: store_id,
          limit: limit,
          offset: offset,
        );

  QueryUsersPlatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.store_id,
    required this.limit,
    required this.offset,
  }) : super.internal();

  final String path;
  final int store_id;
  final int limit;
  final int offset;

  @override
  Override overrideWith(
    FutureOr<UnwrapResponse<PlatesGroup>> Function(QueryUsersPlatesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QueryUsersPlatesProvider._internal(
        (ref) => create(ref as QueryUsersPlatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        store_id: store_id,
        limit: limit,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> createElement() {
    return _QueryUsersPlatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryUsersPlatesProvider && other.path == path && other.store_id == store_id && other.limit == limit && other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, store_id.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QueryUsersPlatesRef on AutoDisposeFutureProviderRef<UnwrapResponse<PlatesGroup>> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `store_id` of this provider.
  int get store_id;

  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `offset` of this provider.
  int get offset;
}

class _QueryUsersPlatesProviderElement extends AutoDisposeFutureProviderElement<UnwrapResponse<PlatesGroup>> with QueryUsersPlatesRef {
  _QueryUsersPlatesProviderElement(super.provider);

  @override
  String get path => (origin as QueryUsersPlatesProvider).path;
  @override
  int get store_id => (origin as QueryUsersPlatesProvider).store_id;
  @override
  int get limit => (origin as QueryUsersPlatesProvider).limit;
  @override
  int get offset => (origin as QueryUsersPlatesProvider).offset;
}

String _$queryPlatesReactsHash() => r'cd1ae21fa9a43694a548abd5d0526251f6f8668e';

abstract class _$QueryPlatesReacts extends BuildlessAutoDisposeAsyncNotifier<PlatesData> {
  late final int plates_id;
  late final int? liked_plates_id;
  late final int? saved_plates_id;
  late final int? liked_store_id;
  late final int? saved_store_id;
  late final int liked_plates_id_count;
  late final int saved_plates_id_count;
  late final int reacts_count;

  FutureOr<PlatesData> build(
    int plates_id,
    int? liked_plates_id,
    int? saved_plates_id,
    int? liked_store_id,
    int? saved_store_id,
    int liked_plates_id_count,
    int saved_plates_id_count,
    int reacts_count,
  );
}

/// See also [QueryPlatesReacts].
@ProviderFor(QueryPlatesReacts)
const queryPlatesReactsProvider = QueryPlatesReactsFamily();

/// See also [QueryPlatesReacts].
class QueryPlatesReactsFamily extends Family<AsyncValue<PlatesData>> {
  /// See also [QueryPlatesReacts].
  const QueryPlatesReactsFamily();

  /// See also [QueryPlatesReacts].
  QueryPlatesReactsProvider call(
    int plates_id,
    int? liked_plates_id,
    int? saved_plates_id,
    int? liked_store_id,
    int? saved_store_id,
    int liked_plates_id_count,
    int saved_plates_id_count,
    int reacts_count,
  ) {
    return QueryPlatesReactsProvider(
      plates_id,
      liked_plates_id,
      saved_plates_id,
      liked_store_id,
      saved_store_id,
      liked_plates_id_count,
      saved_plates_id_count,
      reacts_count,
    );
  }

  @override
  QueryPlatesReactsProvider getProviderOverride(
    covariant QueryPlatesReactsProvider provider,
  ) {
    return call(
      provider.plates_id,
      provider.liked_plates_id,
      provider.saved_plates_id,
      provider.liked_store_id,
      provider.saved_store_id,
      provider.liked_plates_id_count,
      provider.saved_plates_id_count,
      provider.reacts_count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'queryPlatesReactsProvider';
}

/// See also [QueryPlatesReacts].
class QueryPlatesReactsProvider extends AutoDisposeAsyncNotifierProviderImpl<QueryPlatesReacts, PlatesData> {
  /// See also [QueryPlatesReacts].
  QueryPlatesReactsProvider(
    int plates_id,
    int? liked_plates_id,
    int? saved_plates_id,
    int? liked_store_id,
    int? saved_store_id,
    int liked_plates_id_count,
    int saved_plates_id_count,
    int reacts_count,
  ) : this._internal(
          () => QueryPlatesReacts()
            ..plates_id = plates_id
            ..liked_plates_id = liked_plates_id
            ..saved_plates_id = saved_plates_id
            ..liked_store_id = liked_store_id
            ..saved_store_id = saved_store_id
            ..liked_plates_id_count = liked_plates_id_count
            ..saved_plates_id_count = saved_plates_id_count
            ..reacts_count = reacts_count,
          from: queryPlatesReactsProvider,
          name: r'queryPlatesReactsProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$queryPlatesReactsHash,
          dependencies: QueryPlatesReactsFamily._dependencies,
          allTransitiveDependencies: QueryPlatesReactsFamily._allTransitiveDependencies,
          plates_id: plates_id,
          liked_plates_id: liked_plates_id,
          saved_plates_id: saved_plates_id,
          liked_store_id: liked_store_id,
          saved_store_id: saved_store_id,
          liked_plates_id_count: liked_plates_id_count,
          saved_plates_id_count: saved_plates_id_count,
          reacts_count: reacts_count,
        );

  QueryPlatesReactsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plates_id,
    required this.liked_plates_id,
    required this.saved_plates_id,
    required this.liked_store_id,
    required this.saved_store_id,
    required this.liked_plates_id_count,
    required this.saved_plates_id_count,
    required this.reacts_count,
  }) : super.internal();

  final int plates_id;
  final int? liked_plates_id;
  final int? saved_plates_id;
  final int? liked_store_id;
  final int? saved_store_id;
  final int liked_plates_id_count;
  final int saved_plates_id_count;
  final int reacts_count;

  @override
  FutureOr<PlatesData> runNotifierBuild(
    covariant QueryPlatesReacts notifier,
  ) {
    return notifier.build(
      plates_id,
      liked_plates_id,
      saved_plates_id,
      liked_store_id,
      saved_store_id,
      liked_plates_id_count,
      saved_plates_id_count,
      reacts_count,
    );
  }

  @override
  Override overrideWith(QueryPlatesReacts Function() create) {
    return ProviderOverride(
      origin: this,
      override: QueryPlatesReactsProvider._internal(
        () => create()
          ..plates_id = plates_id
          ..liked_plates_id = liked_plates_id
          ..saved_plates_id = saved_plates_id
          ..liked_store_id = liked_store_id
          ..saved_store_id = saved_store_id
          ..liked_plates_id_count = liked_plates_id_count
          ..saved_plates_id_count = saved_plates_id_count
          ..reacts_count = reacts_count,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plates_id: plates_id,
        liked_plates_id: liked_plates_id,
        saved_plates_id: saved_plates_id,
        liked_store_id: liked_store_id,
        saved_store_id: saved_store_id,
        liked_plates_id_count: liked_plates_id_count,
        saved_plates_id_count: saved_plates_id_count,
        reacts_count: reacts_count,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<QueryPlatesReacts, PlatesData> createElement() {
    return _QueryPlatesReactsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryPlatesReactsProvider && other.plates_id == plates_id && other.liked_plates_id == liked_plates_id && other.saved_plates_id == saved_plates_id && other.liked_store_id == liked_store_id && other.saved_store_id == saved_store_id && other.liked_plates_id_count == liked_plates_id_count && other.saved_plates_id_count == saved_plates_id_count && other.reacts_count == reacts_count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plates_id.hashCode);
    hash = _SystemHash.combine(hash, liked_plates_id.hashCode);
    hash = _SystemHash.combine(hash, saved_plates_id.hashCode);
    hash = _SystemHash.combine(hash, liked_store_id.hashCode);
    hash = _SystemHash.combine(hash, saved_store_id.hashCode);
    hash = _SystemHash.combine(hash, liked_plates_id_count.hashCode);
    hash = _SystemHash.combine(hash, saved_plates_id_count.hashCode);
    hash = _SystemHash.combine(hash, reacts_count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QueryPlatesReactsRef on AutoDisposeAsyncNotifierProviderRef<PlatesData> {
  /// The parameter `plates_id` of this provider.
  int get plates_id;

  /// The parameter `liked_plates_id` of this provider.
  int? get liked_plates_id;

  /// The parameter `saved_plates_id` of this provider.
  int? get saved_plates_id;

  /// The parameter `liked_store_id` of this provider.
  int? get liked_store_id;

  /// The parameter `saved_store_id` of this provider.
  int? get saved_store_id;

  /// The parameter `liked_plates_id_count` of this provider.
  int get liked_plates_id_count;

  /// The parameter `saved_plates_id_count` of this provider.
  int get saved_plates_id_count;

  /// The parameter `reacts_count` of this provider.
  int get reacts_count;
}

class _QueryPlatesReactsProviderElement extends AutoDisposeAsyncNotifierProviderElement<QueryPlatesReacts, PlatesData> with QueryPlatesReactsRef {
  _QueryPlatesReactsProviderElement(super.provider);

  @override
  int get plates_id => (origin as QueryPlatesReactsProvider).plates_id;
  @override
  int? get liked_plates_id => (origin as QueryPlatesReactsProvider).liked_plates_id;
  @override
  int? get saved_plates_id => (origin as QueryPlatesReactsProvider).saved_plates_id;
  @override
  int? get liked_store_id => (origin as QueryPlatesReactsProvider).liked_store_id;
  @override
  int? get saved_store_id => (origin as QueryPlatesReactsProvider).saved_store_id;
  @override
  int get liked_plates_id_count => (origin as QueryPlatesReactsProvider).liked_plates_id_count;
  @override
  int get saved_plates_id_count => (origin as QueryPlatesReactsProvider).saved_plates_id_count;
  @override
  int get reacts_count => (origin as QueryPlatesReactsProvider).reacts_count;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
