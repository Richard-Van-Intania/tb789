// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchProfileHash() => r'0e69070f1fff81b05502c3ef5fd4b903ebfacb86';

/// See also [fetchProfile].
@ProviderFor(fetchProfile)
final fetchProfileProvider = AutoDisposeFutureProvider<UnwrapResponse<Profile>>.internal(
  fetchProfile,
  name: r'fetchProfileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$fetchProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchProfileRef = AutoDisposeFutureProviderRef<UnwrapResponse<Profile>>;
String _$editNameHash() => r'28323915cba9c0c6bd73543a12a4e47e6a138689';

/// See also [EditName].
@ProviderFor(EditName)
final editNameProvider = AutoDisposeAsyncNotifierProvider<EditName, int>.internal(
  EditName.new,
  name: r'editNameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$editNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EditName = AutoDisposeAsyncNotifier<int>;
String _$editInformationHash() => r'1c83ba2da6dbf1fd8dde24ec75534d19ffbc48ee';

/// See also [EditInformation].
@ProviderFor(EditInformation)
final editInformationProvider = AutoDisposeAsyncNotifierProvider<EditInformation, int>.internal(
  EditInformation.new,
  name: r'editInformationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$editInformationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EditInformation = AutoDisposeAsyncNotifier<int>;
String _$updatePhotosHash() => r'c8ec8773b2b529c7dba95bae6d98b8e041f03dc7';

/// See also [UpdatePhotos].
@ProviderFor(UpdatePhotos)
final updatePhotosProvider = AutoDisposeAsyncNotifierProvider<UpdatePhotos, int>.internal(
  UpdatePhotos.new,
  name: r'updatePhotosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$updatePhotosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UpdatePhotos = AutoDisposeAsyncNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
