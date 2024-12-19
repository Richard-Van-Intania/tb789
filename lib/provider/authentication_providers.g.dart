// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$autoRenewTokenHash() => r'a466a10fef3a4526a9eba059a1b8a5c99b8f84d6';

/// See also [autoRenewToken].
@ProviderFor(autoRenewToken)
final autoRenewTokenProvider = FutureProvider<int>.internal(
  autoRenewToken,
  name: r'autoRenewTokenProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$autoRenewTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AutoRenewTokenRef = FutureProviderRef<int>;
String _$credentialHash() => r'ef61e98cc317e9135def612689c4448f809611b1';

/// See also [Credential].
@ProviderFor(Credential)
final credentialProvider = AsyncNotifierProvider<Credential, Map<String, String>>.internal(
  Credential.new,
  name: r'credentialProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$credentialHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Credential = AsyncNotifier<Map<String, String>>;
String _$checkAvailabilityEmailHash() => r'4c0ecdbd000c578b5e5b49cee67b1ca20f7b25b5';

/// See also [CheckAvailabilityEmail].
@ProviderFor(CheckAvailabilityEmail)
final checkAvailabilityEmailProvider = AutoDisposeAsyncNotifierProvider<CheckAvailabilityEmail, UnwrapResponse<Authentication>>.internal(
  CheckAvailabilityEmail.new,
  name: r'checkAvailabilityEmailProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$checkAvailabilityEmailHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CheckAvailabilityEmail = AutoDisposeAsyncNotifier<UnwrapResponse<Authentication>>;
String _$checkVerificationCodeHash() => r'8d477c86adde08e66b46e0a5efda5b20c5500b3b';

/// See also [CheckVerificationCode].
@ProviderFor(CheckVerificationCode)
final checkVerificationCodeProvider = AutoDisposeAsyncNotifierProvider<CheckVerificationCode, UnwrapResponse<Authentication>>.internal(
  CheckVerificationCode.new,
  name: r'checkVerificationCodeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$checkVerificationCodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CheckVerificationCode = AutoDisposeAsyncNotifier<UnwrapResponse<Authentication>>;
String _$createNewAccountHash() => r'3df11a056ff1de1dad12fb26dd77c2379ae4832a';

/// See also [CreateNewAccount].
@ProviderFor(CreateNewAccount)
final createNewAccountProvider = AutoDisposeAsyncNotifierProvider<CreateNewAccount, UnwrapResponse<Authentication>>.internal(
  CreateNewAccount.new,
  name: r'createNewAccountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$createNewAccountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CreateNewAccount = AutoDisposeAsyncNotifier<UnwrapResponse<Authentication>>;
String _$forgotPasswordHash() => r'00b85272f8171ae8f4ee5e08dff5a4898ddbc8cf';

/// See also [ForgotPassword].
@ProviderFor(ForgotPassword)
final forgotPasswordProvider = AutoDisposeAsyncNotifierProvider<ForgotPassword, UnwrapResponse<Authentication>>.internal(
  ForgotPassword.new,
  name: r'forgotPasswordProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$forgotPasswordHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ForgotPassword = AutoDisposeAsyncNotifier<UnwrapResponse<Authentication>>;
String _$checkVerificationCodeForgotHash() => r'9c54560cdd5e64d99b1f3eebd7b9827059b837c9';

/// See also [CheckVerificationCodeForgot].
@ProviderFor(CheckVerificationCodeForgot)
final checkVerificationCodeForgotProvider = AutoDisposeAsyncNotifierProvider<CheckVerificationCodeForgot, UnwrapResponse<Authentication>>.internal(
  CheckVerificationCodeForgot.new,
  name: r'checkVerificationCodeForgotProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$checkVerificationCodeForgotHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CheckVerificationCodeForgot = AutoDisposeAsyncNotifier<UnwrapResponse<Authentication>>;
String _$resetPasswordHash() => r'596efffa5721661447feb280764764527d82ab6c';

/// See also [ResetPassword].
@ProviderFor(ResetPassword)
final resetPasswordProvider = AutoDisposeAsyncNotifierProvider<ResetPassword, UnwrapResponse<Authentication>>.internal(
  ResetPassword.new,
  name: r'resetPasswordProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$resetPasswordHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ResetPassword = AutoDisposeAsyncNotifier<UnwrapResponse<Authentication>>;
String _$autoSignInHash() => r'd133ac5246679c468b9d30160aeadb0f4f9409f7';

/// See also [AutoSignIn].
@ProviderFor(AutoSignIn)
final autoSignInProvider = AsyncNotifierProvider<AutoSignIn, int>.internal(
  AutoSignIn.new,
  name: r'autoSignInProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$autoSignInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AutoSignIn = AsyncNotifier<int>;
String _$validateCurrentPasswordHash() => r'1c489323299e2fe2f7569594deadd5805ac04d90';

/// See also [ValidateCurrentPassword].
@ProviderFor(ValidateCurrentPassword)
final validateCurrentPasswordProvider = AutoDisposeAsyncNotifierProvider<ValidateCurrentPassword, int>.internal(
  ValidateCurrentPassword.new,
  name: r'validateCurrentPasswordProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$validateCurrentPasswordHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ValidateCurrentPassword = AutoDisposeAsyncNotifier<int>;
String _$changePasswordHash() => r'6a467f33d48ee4582241af37d26250d8f834a604';

/// See also [ChangePassword].
@ProviderFor(ChangePassword)
final changePasswordProvider = AutoDisposeAsyncNotifierProvider<ChangePassword, int>.internal(
  ChangePassword.new,
  name: r'changePasswordProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$changePasswordHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChangePassword = AutoDisposeAsyncNotifier<int>;
String _$deleteAccountHash() => r'67a2bbff805d2b9c94ae454ebd7419b34261f5fc';

/// See also [DeleteAccount].
@ProviderFor(DeleteAccount)
final deleteAccountProvider = AutoDisposeNotifierProvider<DeleteAccount, int>.internal(
  DeleteAccount.new,
  name: r'deleteAccountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$deleteAccountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DeleteAccount = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
