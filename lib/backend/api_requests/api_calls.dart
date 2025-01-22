import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start schools ApiFlow API Group Code

class SchoolsApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/3a60351b4fab42cfb1c8349779dbfd17';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
  };
  static ListSheet1RowsCall listSheet1RowsCall = ListSheet1RowsCall();
  static InsertNewRowInSheet1Call insertNewRowInSheet1Call =
      InsertNewRowInSheet1Call();
  static GetSheet1RowByIndexCall getSheet1RowByIndexCall =
      GetSheet1RowByIndexCall();
  static UpdateSheet1RowCall updateSheet1RowCall = UpdateSheet1RowCall();
  static RemoveSheet1RowByIndexCall removeSheet1RowByIndexCall =
      RemoveSheet1RowByIndexCall();
  static ListSheetRowsCall listSheetRowsCall = ListSheetRowsCall();
  static InsertNewRowCall insertNewRowCall = InsertNewRowCall();
  static GetSheetRowByIndexCall getSheetRowByIndexCall =
      GetSheetRowByIndexCall();
  static UpdateRowCall updateRowCall = UpdateRowCall();
  static ListAllSheetsCall listAllSheetsCall = ListAllSheetsCall();
  static FindSheetCall findSheetCall = FindSheetCall();
  static CreateNewSheetCall createNewSheetCall = CreateNewSheetCall();
}

class ListSheet1RowsCall {
  Future<ApiCallResponse> call({
    int? start,
    int? limit,
    String? search = '',
    String? schoolName = '',
    String? city = '',
    String? description = '',
    String? longitude = '',
    String? latitude = '',
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Sheet1 rows',
      apiUrl: '$baseUrl/sheets/0/rows',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {
        'start': start,
        'limit': limit,
        'search': search,
        'school_name': schoolName,
        'city': city,
        'description': description,
        'longitude': longitude,
        'latitude': latitude,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertNewRowInSheet1Call {
  Future<ApiCallResponse> call() async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "a": "Damascus Community School",
  "b": "Damascus",
  "c": "Liberated School",
  "d": "",
  "e": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert new row in Sheet1',
      apiUrl: '$baseUrl/sheets/0/rows',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSheet1RowByIndexCall {
  Future<ApiCallResponse> call({
    int? index,
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Sheet1 row by index',
      apiUrl: '$baseUrl/sheets/0/rows/$index',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSheet1RowCall {
  Future<ApiCallResponse> call({
    int? index,
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "a": "Damascus Community School",
  "b": "Damascus",
  "c": "Liberated School",
  "d": "",
  "e": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Sheet1 row',
      apiUrl: '$baseUrl/sheets/0/rows/$index',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveSheet1RowByIndexCall {
  Future<ApiCallResponse> call({
    int? index,
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Remove Sheet1 row by index',
      apiUrl: '$baseUrl/sheets/0/rows/$index',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListSheetRowsCall {
  Future<ApiCallResponse> call({
    String? sheet = '',
    int? start,
    int? limit,
    String? search = '',
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List sheet rows',
      apiUrl: '$baseUrl/sheets/$sheet/rows',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {
        'start': start,
        'limit': limit,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertNewRowCall {
  Future<ApiCallResponse> call({
    String? sheet = '',
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "a": "value",
  "b": "value",
  "c": "value",
  "d": "value",
  "e": "value",
  "f": "value",
  "g": "value"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert new row',
      apiUrl: '$baseUrl/sheets/$sheet/rows',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSheetRowByIndexCall {
  Future<ApiCallResponse> call({
    String? sheet = '',
    int? index,
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sheet row by index',
      apiUrl: '$baseUrl/sheets/$sheet/rows/$index',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateRowCall {
  Future<ApiCallResponse> call({
    String? sheet = '',
    int? index,
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "a": "value",
  "b": "value",
  "c": "value",
  "d": "value",
  "e": "value",
  "f": "value",
  "g": "value"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update row',
      apiUrl: '$baseUrl/sheets/$sheet/rows/$index',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAllSheetsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all sheets',
      apiUrl: '$baseUrl/sheets/list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindSheetCall {
  Future<ApiCallResponse> call({
    String? title = '',
  }) async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Find sheet',
      apiUrl: '$baseUrl/sheets/find',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {
        'title': title,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewSheetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SchoolsApiFlowAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "title": "Sheet title",
  "headers": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new sheet',
      apiUrl: '$baseUrl/sheets/create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer YzE2MzcwNzY4N2QwM2JjNTA2NzMzMjYzOWQzOGE0YTk6MmU2OTllNmUwNjY0ZGIzN2ZkNGVhYTE5NGIyNDQzMGI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End schools ApiFlow API Group Code

class GetDepartmentsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Departments',
      apiUrl:
          'https://collectionapi.metmuseum.org/public/collection/v1/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchArtCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Art',
      apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DepartmentHighlightsCall {
  static Future<ApiCallResponse> call({
    int? departmentId,
    bool? isHighlight = true,
    String? q = '*',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Department Highlights',
      apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'departmentId': departmentId,
        'isHighlight': isHighlight,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
