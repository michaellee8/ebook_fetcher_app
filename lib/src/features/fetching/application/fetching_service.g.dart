// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetching_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchingServiceHash() => r'bb868ecb70a57d28f4c90839f63748ff162ec1bc';

/// See also [fetchingService].
@ProviderFor(fetchingService)
final fetchingServiceProvider = AutoDisposeProvider<FetchingService>.internal(
  fetchingService,
  name: r'fetchingServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchingServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchingServiceRef = AutoDisposeProviderRef<FetchingService>;
String _$bookFetcherHash() => r'a66652cda0c7ebac0dcdc8d27cff76a86ebfeed9';

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

typedef BookFetcherRef = AutoDisposeProviderRef<BookFetcher>;

/// See also [bookFetcher].
@ProviderFor(bookFetcher)
const bookFetcherProvider = BookFetcherFamily();

/// See also [bookFetcher].
class BookFetcherFamily extends Family<BookFetcher> {
  /// See also [bookFetcher].
  const BookFetcherFamily();

  /// See also [bookFetcher].
  BookFetcherProvider call({
    required Uri url,
  }) {
    return BookFetcherProvider(
      url: url,
    );
  }

  @override
  BookFetcherProvider getProviderOverride(
    covariant BookFetcherProvider provider,
  ) {
    return call(
      url: provider.url,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookFetcherProvider';
}

/// See also [bookFetcher].
class BookFetcherProvider extends AutoDisposeProvider<BookFetcher> {
  /// See also [bookFetcher].
  BookFetcherProvider({
    required this.url,
  }) : super.internal(
          (ref) => bookFetcher(
            ref,
            url: url,
          ),
          from: bookFetcherProvider,
          name: r'bookFetcherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookFetcherHash,
          dependencies: BookFetcherFamily._dependencies,
          allTransitiveDependencies:
              BookFetcherFamily._allTransitiveDependencies,
        );

  final Uri url;

  @override
  bool operator ==(Object other) {
    return other is BookFetcherProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
