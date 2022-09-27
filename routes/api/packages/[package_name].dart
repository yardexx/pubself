import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:package_storage/package_storage.dart';

FutureOr<Response> onRequest(RequestContext context, String packageName) {
  if(context.request.method == HttpMethod.get){
    return _get(context, packageName);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _get(RequestContext context, String packageName) async {
  final storage = context.read<PackageStorage>();
  final package = await storage.fetch(packageName);
  return Response.json(body: package);
}
