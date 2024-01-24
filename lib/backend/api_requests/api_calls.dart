import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start PLAYERS Group Code

class PlayersGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static LastUpdatedPlayerCall lastUpdatedPlayerCall = LastUpdatedPlayerCall();
  static TestCall testCall = TestCall();
  static TestCopyCall testCopyCall = TestCopyCall();
}

class LastUpdatedPlayerCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LastUpdatedPlayer',
      apiUrl:
          '${PlayersGroup.baseUrl}players?limit=1&order=updated_at.desc&select=updated_at',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class TestCall {
  Future<ApiCallResponse> call({
    String? playerUid = '',
    String? teamName = '',
    String? teamTag = '',
  }) async {
    final ffApiRequestBody = '''
{
"player_uid": "$playerUid",
"team_name": "$teamName",
"team_tag": "$teamTag"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: '${PlayersGroup.baseUrl}rpc/create_team',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestCopyCall {
  Future<ApiCallResponse> call({
    String? playerUid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "player_uid": "$playerUid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'test Copy',
      apiUrl: '${PlayersGroup.baseUrl}rpc/playerByUID',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End PLAYERS Group Code

/// Start TEAMS Group Code

class TeamsGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static TeamMembersArrayCall teamMembersArrayCall = TeamMembersArrayCall();
}

class TeamMembersArrayCall {
  Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teamMembersArray',
      apiUrl:
          '${TeamsGroup.baseUrl}team_members?team_members_team_id=eq.$teamId&select=team_members_player_id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TEAMS Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
