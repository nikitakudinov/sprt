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
  static LASTUPDATEDplayersCall lASTUPDATEDplayersCall =
      LASTUPDATEDplayersCall();
  static PlayersCall playersCall = PlayersCall();
}

class LASTUPDATEDplayersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LASTUPDATEDplayers',
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

  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class PlayersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'PLAYERS',
      apiUrl: '${PlayersGroup.baseUrl}players?',
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

  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$[:].uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nickname(dynamic response) => (getJsonField(
        response,
        r'''$[:].nickname''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedat(dynamic response) => (getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? team(dynamic response) => (getJsonField(
        response,
        r'''$[:].team''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? country(dynamic response) => (getJsonField(
        response,
        r'''$[:].country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End PLAYERS Group Code

/// Start TEAMS Group Code

class TeamsGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static LASTUPDATEDteamsCall lASTUPDATEDteamsCall = LASTUPDATEDteamsCall();
  static TeamsCall teamsCall = TeamsCall();
  static TeaminfoCall teaminfoCall = TeaminfoCall();
}

class LASTUPDATEDteamsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LASTUPDATEDteams',
      apiUrl:
          '${TeamsGroup.baseUrl}teams?limit=1&order=updated_at.desc&select=updated_at',
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

  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class TeamsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TEAMS',
      apiUrl: '${TeamsGroup.baseUrl}teams?',
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

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedat(dynamic response) => (getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? creator(dynamic response) => (getJsonField(
        response,
        r'''$[:].creator''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? info(dynamic response) => (getJsonField(
        response,
        r'''$[:].info''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class TeaminfoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'teaminfo',
      apiUrl: '${TeamsGroup.baseUrl}team_info?',
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

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedat(dynamic response) => (getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? country(dynamic response) => getJsonField(
        response,
        r'''$[:].country''',
        true,
      ) as List?;
}

/// End TEAMS Group Code

/// Start TOURNAMENTS Group Code

class TournamentsGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static LASTUPDATEDtournamentsCall lASTUPDATEDtournamentsCall =
      LASTUPDATEDtournamentsCall();
  static TournamentsCall tournamentsCall = TournamentsCall();
  static TournamentinfoCall tournamentinfoCall = TournamentinfoCall();
  static TournamentmembersCall tournamentmembersCall = TournamentmembersCall();
  static TournamentorganizatorsCall tournamentorganizatorsCall =
      TournamentorganizatorsCall();
}

class LASTUPDATEDtournamentsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LASTUPDATEDtournaments',
      apiUrl:
          '${TournamentsGroup.baseUrl}tournaments?limit=1&order=updated_at.desc&select=updated_at',
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

  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class TournamentsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TOURNAMENTS',
      apiUrl: '${TournamentsGroup.baseUrl}tournaments?',
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
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  int? info(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].info''',
      ));
}

class TournamentinfoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tournamentinfo',
      apiUrl: '${TournamentsGroup.baseUrl}tournament_info?',
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
  int? tournamentid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tournament_id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  int? country(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].country''',
      ));
}

class TournamentmembersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tournamentmembers',
      apiUrl: '${TournamentsGroup.baseUrl}tournament_members?',
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
  int? tournamentid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tournament_id''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  int? teamid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].team_id''',
      ));
}

class TournamentorganizatorsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tournamentorganizators',
      apiUrl: '${TournamentsGroup.baseUrl}tournament_organizators?',
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
  int? tournamentid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tournament_id''',
      ));
  String? playeruid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].player_uid''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

/// End TOURNAMENTS Group Code

/// Start MATCHES Group Code

class MatchesGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static LASTUPDATEDmatchesCall lASTUPDATEDmatchesCall =
      LASTUPDATEDmatchesCall();
  static MatchesCall matchesCall = MatchesCall();
  static MatchopponentsCall matchopponentsCall = MatchopponentsCall();
}

class LASTUPDATEDmatchesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LASTUPDATEDmatches',
      apiUrl:
          '${MatchesGroup.baseUrl}matches?limit=1&order=updated_at.desc&select=updated_at',
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

  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class MatchesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'MATCHES',
      apiUrl: '${MatchesGroup.baseUrl}matches?',
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
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  int? fortournament(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].for_tournament''',
      ));
  String? dateofgame(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].date_of_game''',
      ));
  int? opponents(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].opponents''',
      ));
}

class MatchopponentsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'matchopponents',
      apiUrl: '${MatchesGroup.baseUrl}match_opponents?',
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

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedat(dynamic response) => (getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? teamid(dynamic response) => (getJsonField(
        response,
        r'''$[:].team_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? scores(dynamic response) => (getJsonField(
        response,
        r'''$[:].scores''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? matchid(dynamic response) => (getJsonField(
        response,
        r'''$[:].match_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End MATCHES Group Code

/// Start CHATS Group Code

class ChatsGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static LASTUPDATEDchatsCall lASTUPDATEDchatsCall = LASTUPDATEDchatsCall();
  static ChatsCall chatsCall = ChatsCall();
  static GetchatsCall getchatsCall = GetchatsCall();
  static ChatsbyidsCall chatsbyidsCall = ChatsbyidsCall();
  static AuthchatmembersCall authchatmembersCall = AuthchatmembersCall();
  static ChatmessagesCall chatmessagesCall = ChatmessagesCall();
  static ChatmembersCall chatmembersCall = ChatmembersCall();
}

class LASTUPDATEDchatsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LASTUPDATEDchats',
      apiUrl:
          '${ChatsGroup.baseUrl}chats?limit=1&order=updated_at.desc&select=updated_at',
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

  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class ChatsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CHATS',
      apiUrl: '${ChatsGroup.baseUrl}chats?',
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
  String? lastmessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_message''',
      ));
  String? lastmessagesander(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].lastmessage_sander''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  String? chattype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_type''',
      ));
}

class GetchatsCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getchats',
      apiUrl: '${ChatsGroup.baseUrl}rpc/get_chats',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {
        'uid': uid,
      },
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
  String? lastmessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_message''',
      ));
  String? lastmessagesander(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].lastmessage_sander''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  String? chattype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_type''',
      ));
  List<int>? chatofteam(dynamic response) => (getJsonField(
        response,
        r'''$[:].chat_of_team''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? chatoftournament(dynamic response) => (getJsonField(
        response,
        r'''$[:].chat_of_tournament''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ChatsbyidsCall {
  Future<ApiCallResponse> call({
    String? chatIds = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'chatsbyids',
      apiUrl: '${ChatsGroup.baseUrl}chats?id=in.($chatIds)',
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
  String? lastmessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_message''',
      ));
  String? lastmessagesander(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].lastmessage_sander''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  String? chattype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_type''',
      ));
}

class AuthchatmembersCall {
  Future<ApiCallResponse> call({
    String? playerUid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'authchatmembers',
      apiUrl:
          '${ChatsGroup.baseUrl}chat_members?player_uid=eq.$playerUid&select=chat_id,player_uid',
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

  int? chatid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].chat_id''',
      ));
  String? playeruid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].player_uid''',
      ));
}

class ChatmessagesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'chatmessages',
      apiUrl: '${ChatsGroup.baseUrl}chat_messages?',
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
  String? sander(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].sander''',
      ));
  int? chatid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].chat_id''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

class ChatmembersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'chatmembers',
      apiUrl: '${ChatsGroup.baseUrl}chat_members?',
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
  int? chatid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].chat_id''',
      ));
  String? playeruid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].player_uid''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
}

/// End CHATS Group Code

/// Start UPDATES Group Code

class UpdatesGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static UpdatesCall updatesCall = UpdatesCall();
}

class UpdatesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'UPDATES',
      apiUrl: '${UpdatesGroup.baseUrl}updates',
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

  String? chats(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chats''',
      ));
  String? teams(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teams''',
      ));
}

/// End UPDATES Group Code

/// Start DEV Group Code

class DevGroup {
  static String baseUrl = 'https://supabase.proplayclub.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static AuthmessagesCall authmessagesCall = AuthmessagesCall();
  static GetchatmembersCall getchatmembersCall = GetchatmembersCall();
  static GetunreadedmessagesbychatidCall getunreadedmessagesbychatidCall =
      GetunreadedmessagesbychatidCall();
  static ReadChatMessagesCall readChatMessagesCall = ReadChatMessagesCall();
  static AuthchatsCall authchatsCall = AuthchatsCall();
}

class AuthmessagesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AUTHMESSAGES',
      apiUrl: '${DevGroup.baseUrl}rpc/get_messages?',
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

  List? chatmessagesreadedby(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_messages_readed_by''',
        true,
      ) as List?;
}

class GetchatmembersCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getchatmembers',
      apiUrl: '${DevGroup.baseUrl}rpc/get_chat_members',
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

  List? chatmessagesreadedby(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_messages_readed_by''',
        true,
      ) as List?;
}

class GetunreadedmessagesbychatidCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    int? chat,
  }) async {
    final ffApiRequestBody = '''
{
"uid": "$uid",
"chat": "$chat"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getunreadedmessagesbychatid',
      apiUrl: '${DevGroup.baseUrl}rpc/get_unreaded_messages_by_chat_id',
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

class ReadChatMessagesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    int? chat,
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid",
  "chat": $chat
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'readChatMessages',
      apiUrl: '${DevGroup.baseUrl}rpc/add_readed_by',
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

class AuthchatsCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AUTHCHATS',
      apiUrl: '${DevGroup.baseUrl}rpc/get_chats?select=*,chat_messages(*)',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DEV Group Code

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
