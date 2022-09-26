import 'package:dart_frog/dart_frog.dart';
import 'package:package_storage/package_storage.dart';
import 'package:pubself/cache_package_storage.dart';

final _packageSource = CachePackageStorage();

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<PackageStorage>((_) => _packageSource));
}
