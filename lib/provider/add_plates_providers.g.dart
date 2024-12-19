// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_plates_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSpecialFrontHash() => r'80409112b38c9577c58f3fff150a55f87ed890c8';

/// See also [fetchSpecialFront].
@ProviderFor(fetchSpecialFront)
final fetchSpecialFrontProvider = FutureProvider<ArraySpecialFront>.internal(
  fetchSpecialFront,
  name: r'fetchSpecialFrontProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$fetchSpecialFrontHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchSpecialFrontRef = FutureProviderRef<ArraySpecialFront>;
String _$addNewPlatesHash() => r'7621e02d7139b2d71f599f6a573864f121aeed17';

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

/// See also [addNewPlates].
@ProviderFor(addNewPlates)
const addNewPlatesProvider = AddNewPlatesFamily();

/// See also [addNewPlates].
class AddNewPlatesFamily extends Family<AsyncValue<int>> {
  /// See also [addNewPlates].
  const AddNewPlatesFamily();

  /// See also [addNewPlates].
  AddNewPlatesProvider call(
    String front_text,
    int total,
    int front_number,
    int back_number,
    int special_front_id,
    String? information,
    int price,
    bool is_temporary,
  ) {
    return AddNewPlatesProvider(
      front_text,
      total,
      front_number,
      back_number,
      special_front_id,
      information,
      price,
      is_temporary,
    );
  }

  @override
  AddNewPlatesProvider getProviderOverride(
    covariant AddNewPlatesProvider provider,
  ) {
    return call(
      provider.front_text,
      provider.total,
      provider.front_number,
      provider.back_number,
      provider.special_front_id,
      provider.information,
      provider.price,
      provider.is_temporary,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'addNewPlatesProvider';
}

/// See also [addNewPlates].
class AddNewPlatesProvider extends AutoDisposeFutureProvider<int> {
  /// See also [addNewPlates].
  AddNewPlatesProvider(
    String front_text,
    int total,
    int front_number,
    int back_number,
    int special_front_id,
    String? information,
    int price,
    bool is_temporary,
  ) : this._internal(
          (ref) => addNewPlates(
            ref as AddNewPlatesRef,
            front_text,
            total,
            front_number,
            back_number,
            special_front_id,
            information,
            price,
            is_temporary,
          ),
          from: addNewPlatesProvider,
          name: r'addNewPlatesProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$addNewPlatesHash,
          dependencies: AddNewPlatesFamily._dependencies,
          allTransitiveDependencies: AddNewPlatesFamily._allTransitiveDependencies,
          front_text: front_text,
          total: total,
          front_number: front_number,
          back_number: back_number,
          special_front_id: special_front_id,
          information: information,
          price: price,
          is_temporary: is_temporary,
        );

  AddNewPlatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.front_text,
    required this.total,
    required this.front_number,
    required this.back_number,
    required this.special_front_id,
    required this.information,
    required this.price,
    required this.is_temporary,
  }) : super.internal();

  final String front_text;
  final int total;
  final int front_number;
  final int back_number;
  final int special_front_id;
  final String? information;
  final int price;
  final bool is_temporary;

  @override
  Override overrideWith(
    FutureOr<int> Function(AddNewPlatesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddNewPlatesProvider._internal(
        (ref) => create(ref as AddNewPlatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        front_text: front_text,
        total: total,
        front_number: front_number,
        back_number: back_number,
        special_front_id: special_front_id,
        information: information,
        price: price,
        is_temporary: is_temporary,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _AddNewPlatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddNewPlatesProvider && other.front_text == front_text && other.total == total && other.front_number == front_number && other.back_number == back_number && other.special_front_id == special_front_id && other.information == information && other.price == price && other.is_temporary == is_temporary;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, front_text.hashCode);
    hash = _SystemHash.combine(hash, total.hashCode);
    hash = _SystemHash.combine(hash, front_number.hashCode);
    hash = _SystemHash.combine(hash, back_number.hashCode);
    hash = _SystemHash.combine(hash, special_front_id.hashCode);
    hash = _SystemHash.combine(hash, information.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, is_temporary.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddNewPlatesRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `front_text` of this provider.
  String get front_text;

  /// The parameter `total` of this provider.
  int get total;

  /// The parameter `front_number` of this provider.
  int get front_number;

  /// The parameter `back_number` of this provider.
  int get back_number;

  /// The parameter `special_front_id` of this provider.
  int get special_front_id;

  /// The parameter `information` of this provider.
  String? get information;

  /// The parameter `price` of this provider.
  int get price;

  /// The parameter `is_temporary` of this provider.
  bool get is_temporary;
}

class _AddNewPlatesProviderElement extends AutoDisposeFutureProviderElement<int> with AddNewPlatesRef {
  _AddNewPlatesProviderElement(super.provider);

  @override
  String get front_text => (origin as AddNewPlatesProvider).front_text;
  @override
  int get total => (origin as AddNewPlatesProvider).total;
  @override
  int get front_number => (origin as AddNewPlatesProvider).front_number;
  @override
  int get back_number => (origin as AddNewPlatesProvider).back_number;
  @override
  int get special_front_id => (origin as AddNewPlatesProvider).special_front_id;
  @override
  String? get information => (origin as AddNewPlatesProvider).information;
  @override
  int get price => (origin as AddNewPlatesProvider).price;
  @override
  bool get is_temporary => (origin as AddNewPlatesProvider).is_temporary;
}

String _$selectPlatesTypeHash() => r'7dd617e8f3a6204064223ed958810f75d85f934e';

/// See also [SelectPlatesType].
@ProviderFor(SelectPlatesType)
final selectPlatesTypeProvider = AutoDisposeNotifierProvider<SelectPlatesType, PlatesType>.internal(
  SelectPlatesType.new,
  name: r'selectPlatesTypeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$selectPlatesTypeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectPlatesType = AutoDisposeNotifier<PlatesType>;
String _$selectProvinceHash() => r'6834de23510f2903af28e05aade39ce9e5595913';

/// See also [SelectProvince].
@ProviderFor(SelectProvince)
final selectProvinceProvider = AutoDisposeNotifierProvider<SelectProvince, Province?>.internal(
  SelectProvince.new,
  name: r'selectProvinceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$selectProvinceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectProvince = AutoDisposeNotifier<Province?>;
String _$addPlatesPhotoHash() => r'1580337edcf2912171b76d72a25c3251216bc75a';

/// See also [AddPlatesPhoto].
@ProviderFor(AddPlatesPhoto)
final addPlatesPhotoProvider = AutoDisposeNotifierProvider<AddPlatesPhoto, Uint8List?>.internal(
  AddPlatesPhoto.new,
  name: r'addPlatesPhotoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$addPlatesPhotoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddPlatesPhoto = AutoDisposeNotifier<Uint8List?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
