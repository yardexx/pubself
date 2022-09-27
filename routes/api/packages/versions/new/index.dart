import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../../../../errors/errors.dart';

Response onRequest(RequestContext context) {
  return Response.json(
    statusCode: HttpStatus.badRequest,
    body: PubError.withData(
      code: 'not-implemented',
      message: 'This endpoint has not been implemented yet. Sorry 😅',
    ),
  );
}
