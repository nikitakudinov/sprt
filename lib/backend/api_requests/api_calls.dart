import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start PLAYERS Group Code

class PlayersGroup {
  static String baseUrl = 'https://supa.nkbase.ru/rest/v1/';
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
  static String baseUrl = 'https://supa.nkbase.ru/rest/v1/';
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
  static String baseUrl = 'https://supa.nkbase.ru/rest/v1/';
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
  static String baseUrl = 'https://supa.nkbase.ru/rest/v1/';
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
  static String baseUrl = 'https://supa.nkbase.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static GetchatsCall getchatsCall = GetchatsCall();
  static GetchatmembersCall getchatmembersCall = GetchatmembersCall();
  static GetmessagesCall getmessagesCall = GetmessagesCall();
  static PostmessageCall postmessageCall = PostmessageCall();
}

class GetchatsCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getchats',
      apiUrl: '${ChatsGroup.baseUrl}rpc/get_user_chats',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {
        'p_player_uid': uid,
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
  List? chatmembers(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_members''',
        true,
      ) as List?;
  List? chatmessages(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_messages''',
        true,
      ) as List?;
}

class GetchatmembersCall {
  Future<ApiCallResponse> call({
    String? pPlayerUid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getchatmembers',
      apiUrl: '${ChatsGroup.baseUrl}rpc/get_chat_members',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {
        'p_player_uid': pPlayerUid,
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
  List? chatmembers(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_members''',
        true,
      ) as List?;
  List? chatmessages(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_messages''',
        true,
      ) as List?;
}

class GetmessagesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getmessages',
      apiUrl: '${ChatsGroup.baseUrl}rpc/get_user_messages',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
      },
      params: {
        'p_player_uid': uid,
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
  List? chatmembers(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_members''',
        true,
      ) as List?;
  List? chatmessages(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_messages''',
        true,
      ) as List?;
}

class PostmessageCall {
  Future<ApiCallResponse> call({
    int? pChatId,
    String? pSanderUid = '',
    String? pMessage = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_chat_id": $pChatId,
  "p_sander_uid": "$pSanderUid",
  "p_message": "$pMessage"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postmessage',
      apiUrl: '${ChatsGroup.baseUrl}rpc/sand_message',
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
  List? chatmembers(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_members''',
        true,
      ) as List?;
  List? chatmessages(dynamic response) => getJsonField(
        response,
        r'''$[:].chat_messages''',
        true,
      ) as List?;
}

/// End CHATS Group Code

/// Start UPDATES Group Code

class UpdatesGroup {
  static String baseUrl = 'https://supa.nkbase.ru/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJyb2xlIjogImFub24iLAogICJpc3MiOiAic3VwYWJhc2UiLAogICJpYXQiOiAxNzA1Nzg0NDAwLAogICJleHAiOiAxODYzNjM3MjAwCn0.sci6jMT24jrFLJgxVmGzy8cSakKlhC2YvSOB5CgSJeI',
  };
  static UpdatesCall updatesCall = UpdatesCall();
  static GetchatsupdatesCall getchatsupdatesCall = GetchatsupdatesCall();
  static GetauthuserdataupdatesCall getauthuserdataupdatesCall =
      GetauthuserdataupdatesCall();
  static GetcountriesCall getcountriesCall = GetcountriesCall();
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
  String? chatmembers(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_members''',
      ));
  String? chatmessages(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_messages''',
      ));
  String? matchopponents(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].match_opponents''',
      ));
  String? matches(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].matches''',
      ));
  String? players(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].players''',
      ));
  String? teaminfo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].team_info''',
      ));
}

class GetchatsupdatesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getchatsupdates',
      apiUrl: '${UpdatesGroup.baseUrl}rpc/get_authuserdata_updates',
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

  String? chats(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chats''',
      ));
  String? chatmembers(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_members''',
      ));
  String? chatmessages(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chat_messages''',
      ));
}

class GetauthuserdataupdatesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getauthuserdataupdates',
      apiUrl: '${UpdatesGroup.baseUrl}rpc/get_authuserdata_updates',
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

  String? chatsupdated(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chats_updated''',
      ));
  String? chatmessagesupdated(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].chat_messages_updated''',
      ));
  String? chatmembersupdated(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].chat_members_updated''',
      ));
  String? teamsupdated(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teams_updated''',
      ));
  String? teaminfoupdated(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].team_info_updated''',
      ));
}

class GetcountriesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getcountries',
      apiUrl: '${UpdatesGroup.baseUrl}countries',
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

  List<String>? iso2(dynamic response) => (getJsonField(
        response,
        r'''$[:].iso2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? enName(dynamic response) => (getJsonField(
        response,
        r'''$[:].enName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ruName(dynamic response) => (getJsonField(
        response,
        r'''$[:].ruName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? flagLink16x12(dynamic response) => (getJsonField(
        response,
        r'''$[:].flagLink16x12''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? flagLink32x24(dynamic response) => (getJsonField(
        response,
        r'''$[:].flagLink32x24''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? flagLink48x36(dynamic response) => (getJsonField(
        response,
        r'''$[:].flagLink48x36''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? flagLinkH24(dynamic response) => (getJsonField(
        response,
        r'''$[:].flagLinkH24''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
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
  static GetunreadedmessagesbychatidCall getunreadedmessagesbychatidCall =
      GetunreadedmessagesbychatidCall();
  static ReadChatMessagesCall readChatMessagesCall = ReadChatMessagesCall();
  static AuthchatsCall authchatsCall = AuthchatsCall();
  static GetupdatesCall getupdatesCall = GetupdatesCall();
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

class GetupdatesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getupdates',
      apiUrl: '${DevGroup.baseUrl}rpc/get_updates',
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
