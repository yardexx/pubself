// TODO(Yardex): Remove when implemented
// ignore_for_file: public_member_api_docs

import 'package:package_storage/src/models/models.dart';

abstract class PackageStorage {
  Future<Package?> fetch(String packageName);

  Future<Package> create(Package package);
}
