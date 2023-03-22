import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UserLoginCall {
  static Future<ApiCallResponse> call({
    String? login = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${login}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserLogin',
      apiUrl:
          'https://adaegymykiphhdhomxqg.supabase.co/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFkYWVneW15a2lwaGhkaG9teHFnIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY3ODYxNjI1OSwiZXhwIjoxOTk0MTkyMjU5fQ.rRwidAysiG9Fs3h4PUhx4NC3rJrSdnVMpbJoe7f4UcQ',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserDataCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserData',
      apiUrl: 'https://adaegymykiphhdhomxqg.supabase.co/auth/v1/user',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFkYWVneW15a2lwaGhkaG9teHFnIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY3ODYxNjI1OSwiZXhwIjoxOTk0MTkyMjU5fQ.rRwidAysiG9Fs3h4PUhx4NC3rJrSdnVMpbJoe7f4UcQ',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
