import 'package:dart_frog/dart_frog.dart';
import 'package:package_storage/package_storage.dart';

final _packageSource = CachePackageStorage();

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<PackageStorage>((_) => _packageSource));
}

class CachePackageStorage implements PackageStorage {
  final _cache = <String, Package>{};

  @override
  Future<Package> create(Package package) async {
    _cache[package.name] = package;
    return package;
  }

  @override
  Future<Package?> fetch(String packageName) async {
    return _cache[packageName];
  }
}