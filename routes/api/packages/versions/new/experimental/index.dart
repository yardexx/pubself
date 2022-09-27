import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:package_storage/package_storage.dart';

FutureOr<Response> onRequest(RequestContext context) {
  switch (context.request.method) {
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.get:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response.json(
        body:
            'This site used to upload pub files of already uploaded packages. '
            'To upload pub file, use POST method to this url and put content into '
            'body.',
      );
  }
}

Future<Response> _post(RequestContext context) async {
  final dataSource = context.read<PackageStorage>();

  final pkg = Package.fromJson(await context.request.json());
  final result = await dataSource.create(pkg);

  return Response.json(
    statusCode: HttpStatus.created,
    body: result.toJson(),
  );
}
