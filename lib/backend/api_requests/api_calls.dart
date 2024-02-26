import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start apiAuth Group Code

class ApiAuthGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/auth/v1/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static AuthSignupCall authSignupCall = AuthSignupCall();
  static AuthLogoutCall authLogoutCall = AuthLogoutCall();
  static AuthSigninCall authSigninCall = AuthSigninCall();
}

class AuthSignupCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authSignup',
      apiUrl: '${ApiAuthGroup.baseUrl}signup',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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

  dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
  dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.refresh_token''',
      );
  dynamic uid(dynamic response) => getJsonField(
        response,
        r'''$.user.id''',
      );
}

class AuthLogoutCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'authLogout',
      apiUrl: '${ApiAuthGroup.baseUrl}logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthSigninCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authSignin',
      apiUrl: '${ApiAuthGroup.baseUrl}token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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

  dynamic uid(dynamic response) => getJsonField(
        response,
        r'''$.user.id''',
      );
  dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.refresh_token''',
      );
  dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
}

/// End apiAuth Group Code

/// Start ApiTeams Group Code

class ApiTeamsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static TeamsAllCall teamsAllCall = TeamsAllCall();
  static TeamsByDeparmentCall teamsByDeparmentCall = TeamsByDeparmentCall();
  static TeamsByIdCall teamsByIdCall = TeamsByIdCall();
}

class TeamsAllCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'teamsAll',
      apiUrl: '${ApiTeamsGroup.baseUrl}teams?select=id,code,description',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?;
  List? description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?;
}

class TeamsByDeparmentCall {
  Future<ApiCallResponse> call({
    int? departmentId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teamsByDeparment',
      apiUrl:
          '${ApiTeamsGroup.baseUrl}teams?departmentId=eq.$departmentId&select=id,code,description',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?;
  List? description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?;
}

class TeamsByIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teamsById',
      apiUrl: '${ApiTeamsGroup.baseUrl}teams?id=eq.$teamId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
      );
  dynamic departmentId(dynamic response) => getJsonField(
        response,
        r'''$[:].departmentId''',
      );
  dynamic isAvailable(dynamic response) => getJsonField(
        response,
        r'''$[:].isAvailable''',
      );
  dynamic companyId(dynamic response) => getJsonField(
        response,
        r'''$[:].companyId''',
      );
}

/// End ApiTeams Group Code

/// Start ApiOrdersStatuses Group Code

class ApiOrdersStatusesGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static StatusesAllCall statusesAllCall = StatusesAllCall();
  static StatusesOrderVisitCall statusesOrderVisitCall =
      StatusesOrderVisitCall();
}

class StatusesAllCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'statusesAll',
      apiUrl:
          '${ApiOrdersStatusesGroup.baseUrl}ordersStatusess?select=id,code,description',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class StatusesOrderVisitCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'statusesOrderVisit',
      apiUrl:
          '${ApiOrdersStatusesGroup.baseUrl}ordersStatusess?id=gte.5&id=lte.6&select=id,code,description',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End ApiOrdersStatuses Group Code

/// Start ApiOrdersTypes Group Code

class ApiOrdersTypesGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static OrdersTypesByDepartmentCall ordersTypesByDepartmentCall =
      OrdersTypesByDepartmentCall();
}

class OrdersTypesByDepartmentCall {
  Future<ApiCallResponse> call({
    int? departmentId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ordersTypesByDepartment',
      apiUrl:
          '${ApiOrdersTypesGroup.baseUrl}ordersTypes?departmentId=eq.$departmentId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?;
  List? description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?;
}

/// End ApiOrdersTypes Group Code

/// Start ApiOrdersTypesSub Group Code

class ApiOrdersTypesSubGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static OrdersTypesSubsByDepartmentCall ordersTypesSubsByDepartmentCall =
      OrdersTypesSubsByDepartmentCall();
}

class OrdersTypesSubsByDepartmentCall {
  Future<ApiCallResponse> call({
    int? departmentId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ordersTypesSubsByDepartment',
      apiUrl:
          '${ApiOrdersTypesSubGroup.baseUrl}ordersTypesSubs?departmentId=eq.$departmentId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End ApiOrdersTypesSub Group Code

/// Start ApiOrdersCounter Group Code

class ApiOrdersCounterGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static CurrentCounterCall currentCounterCall = CurrentCounterCall();
}

class CurrentCounterCall {
  Future<ApiCallResponse> call({
    int? companyId,
    int? year,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'currentCounter',
      apiUrl:
          '${ApiOrdersCounterGroup.baseUrl}ordersCounter?companyId=eq.$companyId&year=eq.$year&select=id,counter',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic counter(dynamic response) => getJsonField(
        response,
        r'''$[:].counter''',
      );
}

/// End ApiOrdersCounter Group Code

/// Start apiFcmNotifications Group Code

class ApiFcmNotificationsGroup {
  static String baseUrl = 'https://fcm.googleapis.com/fcm/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization':
        'key=AAAAW035WIA:APA91bFU44I7aotp8_yinyfFweUiHnUNKBQrp2B4vGsgkq8jd_esp_0cnG6bxqjbQL7j6B_s3rXlAb8pOCLOl_9epLF8SU9QNtnhCh0-OBTQOCLoszaXPoGBO32TxGJ6XvPqkTo3F7jD',
  };
  static SendNotificationCall sendNotificationCall = SendNotificationCall();
}

class SendNotificationCall {
  Future<ApiCallResponse> call({
    String? fcmToken = '',
    String? title = '',
    String? body = '',
    String? imgUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "to": "$fcmToken",
  "notification": {
    "title": "$title",
    "body": "$body",
    "badge": 1,
    "sound": "Default",
    "image": "$imgUrl"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendNotification',
      apiUrl: '${ApiFcmNotificationsGroup.baseUrl}send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'key=AAAAW035WIA:APA91bFU44I7aotp8_yinyfFweUiHnUNKBQrp2B4vGsgkq8jd_esp_0cnG6bxqjbQL7j6B_s3rXlAb8pOCLOl_9epLF8SU9QNtnhCh0-OBTQOCLoszaXPoGBO32TxGJ6XvPqkTo3F7jD',
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

/// End apiFcmNotifications Group Code

/// Start apiFaceRecognition Group Code

class ApiFaceRecognitionGroup {
  static String baseUrl = 'https://face-detection13.p.rapidapi.com/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'X-RapidAPI-Key': '7bff578209msh36bf7ee646c8496p1cb1a9jsne6dca85cae02',
    'X-RapidAPI-Host': 'face-detection13.p.rapidapi.com',
  };
  static FaceDetectionCall faceDetectionCall = FaceDetectionCall();
}

class FaceDetectionCall {
  Future<ApiCallResponse> call({
    String? fileUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "$fileUrl"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'faceDetection',
      apiUrl: '${ApiFaceRecognitionGroup.baseUrl}face-detection',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-RapidAPI-Key': '7bff578209msh36bf7ee646c8496p1cb1a9jsne6dca85cae02',
        'X-RapidAPI-Host': 'face-detection13.p.rapidapi.com',
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

  dynamic probability(dynamic response) => getJsonField(
        response,
        r'''$[:].probability''',
      );
}

/// End apiFaceRecognition Group Code

/// Start apiUsers Group Code

class ApiUsersGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static UserByEmailCall userByEmailCall = UserByEmailCall();
  static UserByIdCall userByIdCall = UserByIdCall();
  static UsersLeaderByTeamIdCall usersLeaderByTeamIdCall =
      UsersLeaderByTeamIdCall();
  static UsersByTeamIdCall usersByTeamIdCall = UsersByTeamIdCall();
  static TeamLeaderByIdCall teamLeaderByIdCall = TeamLeaderByIdCall();
}

class UserByEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'userByEmail',
      apiUrl: '${ApiUsersGroup.baseUrl}/v_users?email=eq.$email&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uid''',
      ));
  int? companyId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].companyId''',
      ));
  String? companyCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].companyCode''',
      ));
  String? companyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyDescription''',
      ));
  int? departmentId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].departmentId''',
      ));
  String? departmentCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].departmentCode''',
      ));
  String? nameShort(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nameShort''',
      ));
  String? nameFull(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nameFull''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? departmentDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].departmentDescription''',
      ));
  int? teamId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].teamId''',
      ));
  String? teamDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teamDescription''',
      ));
  String? teamCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teamCode''',
      ));
  int? statusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].statusId''',
      ));
  String? statusCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].statusCode''',
      ));
  String? statusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].statusDescription''',
      ));
  bool? isAdmin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  bool? isAdminSuper(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdminSuper''',
      ));
  String? imgFilePath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imgFilePath''',
      ));
  String? imgFileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imgFileName''',
      ));
  dynamic appVersion(dynamic response) => getJsonField(
        response,
        r'''$[:].appVersion''',
      );
  String? companyImgFilePath(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyImgFilePath''',
      ));
  String? companyImgFileName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyImgFileName''',
      ));
  String? fcmToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fcmToken''',
      ));
  int? orderVisitIdInProgress(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderVisitIdInProgress''',
      ));
  int? orderIdInProgress(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderIdInProgress''',
      ));
  int? teamIdPrevious(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].teamIdPrevious''',
      ));
  int? orderParentIdInProgress(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].orderParentIdInProgress''',
      ));
  bool? isTeamLeader(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isTeamLeader''',
      ));
  int? orderVisitInProgressTeamLeaderId(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].orderVisitInProgressTeamLeaderId''',
      ));
  int? profileId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].profileId''',
      ));
}

class UserByIdCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'userById',
      apiUrl: '${ApiUsersGroup.baseUrl}/v_users?id=eq.$userId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uid''',
      ));
  int? companyId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].companyId''',
      ));
  String? companyCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].companyCode''',
      ));
  String? companyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyDescription''',
      ));
  int? departmentId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].departmentId''',
      ));
  String? departmentCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].departmentCode''',
      ));
  String? nameShort(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nameShort''',
      ));
  String? nameFull(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nameFull''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? departmentDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].departmentDescription''',
      ));
  int? teamId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].teamId''',
      ));
  String? teamDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teamDescription''',
      ));
  String? teamCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teamCode''',
      ));
  int? statusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].statusId''',
      ));
  String? statusCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].statusCode''',
      ));
  String? statusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].statusDescription''',
      ));
  bool? isAdmin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  bool? isAdminSuper(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdminSuper''',
      ));
  String? imgFilePath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imgFilePath''',
      ));
  String? imgFileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imgFileName''',
      ));
  dynamic appVersion(dynamic response) => getJsonField(
        response,
        r'''$[:].appVersion''',
      );
  String? companyImgFilePath(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyImgFilePath''',
      ));
  String? companyImgFileName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyImgFileName''',
      ));
  dynamic fcmToken(dynamic response) => getJsonField(
        response,
        r'''$[:].fcmToken''',
      );
  int? orderVisitIdInProgress(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderVisitIdInProgress''',
      ));
  int? orderIdInProgress(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderIdInProgress''',
      ));
  int? teamIdPrevious(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].teamIdPrevious''',
      ));
  int? orderParentIdInProgress(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].orderParentIdInProgress''',
      ));
  bool? isTeamLeader(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isTeamLeader''',
      ));
  int? orderVisitInProgressTeamLeaderId(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].orderVisitInProgressTeamLeaderId''',
      ));
  int? profileId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].profileId''',
      ));
}

class UsersLeaderByTeamIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'usersLeaderByTeamId',
      apiUrl:
          '${ApiUsersGroup.baseUrl}/v_users?teamId=eq.$teamId&isTeamLeader=eq.true&select=id',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
}

class UsersByTeamIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'usersByTeamId',
      apiUrl: '${ApiUsersGroup.baseUrl}/v_users?teamId=eq.$teamId&select=id',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
}

class TeamLeaderByIdCall {
  Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teamLeaderById',
      apiUrl:
          '${ApiUsersGroup.baseUrl}/v_users?teamId=eq.$teamId&isTeamLeader=eq.true&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uid''',
      ));
  int? companyId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].companyId''',
      ));
  String? companyCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].companyCode''',
      ));
  String? companyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyDescription''',
      ));
  int? departmentId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].departmentId''',
      ));
  String? departmentCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].departmentCode''',
      ));
  String? nameShort(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nameShort''',
      ));
  String? nameFull(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nameFull''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? departmentDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].departmentDescription''',
      ));
  int? teamId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].teamId''',
      ));
  String? teamDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teamDescription''',
      ));
  String? teamCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].teamCode''',
      ));
  int? statusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].statusId''',
      ));
  String? statusCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].statusCode''',
      ));
  String? statusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].statusDescription''',
      ));
  bool? isAdmin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  bool? isAdminSuper(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdminSuper''',
      ));
  String? imgFilePath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imgFilePath''',
      ));
  String? imgFileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imgFileName''',
      ));
  dynamic appVersion(dynamic response) => getJsonField(
        response,
        r'''$[:].appVersion''',
      );
  String? companyImgFilePath(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyImgFilePath''',
      ));
  String? companyImgFileName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].companyImgFileName''',
      ));
  dynamic fcmToken(dynamic response) => getJsonField(
        response,
        r'''$[:].fcmToken''',
      );
}

/// End apiUsers Group Code

/// Start apiOrdersVisitsTeams Group Code

class ApiOrdersVisitsTeamsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static ApiDtUsersByVisitIdCall apiDtUsersByVisitIdCall =
      ApiDtUsersByVisitIdCall();
  static CountUsersByVisitIdCall countUsersByVisitIdCall =
      CountUsersByVisitIdCall();
}

class ApiDtUsersByVisitIdCall {
  Future<ApiCallResponse> call({
    int? visitId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiDtUsersByVisitId',
      apiUrl:
          '${ApiOrdersVisitsTeamsGroup.baseUrl}/v_orders_visits_teams?visitId=eq.$visitId&select=userId',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].userId''',
      ));
}

class CountUsersByVisitIdCall {
  Future<ApiCallResponse> call({
    int? visitId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'countUsersByVisitId',
      apiUrl:
          '${ApiOrdersVisitsTeamsGroup.baseUrl}/v_users_count_by_orders_visits?visitId=eq.$visitId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? visitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].visitId''',
      ));
  int? countUsers(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].counterUsers''',
      ));
}

/// End apiOrdersVisitsTeams Group Code

/// Start apiStorage Group Code

class ApiStorageGroup {
  static String baseUrl =
      'https://hssopxcprokinupxvrtw.supabase.co/storage/v1/object/siges/';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
  };
  static UploadUserProfileCall uploadUserProfileCall = UploadUserProfileCall();
  static UploadAssetImgCall uploadAssetImgCall = UploadAssetImgCall();
  static MoveFileCall moveFileCall = MoveFileCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
  static MoveFileNewCall moveFileNewCall = MoveFileNewCall();
}

class UploadUserProfileCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? fileUrl,
    int? companyId,
    int? userId,
    String? fileName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadUserProfile',
      apiUrl:
          '${ApiStorageGroup.baseUrl}companies/$companyId/users/$userId/$fileName',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {
        'fileUrl': fileUrl,
        'companyId': companyId,
        'userId': userId,
        'fileName': fileName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadAssetImgCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? fileUrl,
    int? companyId,
    int? assetId,
    String? fileName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadAssetImg',
      apiUrl:
          '${ApiStorageGroup.baseUrl}companies/$companyId/assets/$assetId/$fileName',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {
        'fileUrl': fileUrl,
        'companyId': companyId,
        'assetId': assetId,
        'fileName': fileName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MoveFileCall {
  Future<ApiCallResponse> call({
    String? fileName = '',
    String? filePath = '',
    String? destinationBucket = 'siges',
    String? destinationPath = '',
    String? companyId = '',
    int? assetId,
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "filePath": "$filePath",
  "fileName": "$fileName",
  "destinationBucket": "$destinationBucket",
  "destinationPath": "$destinationPath"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'moveFile',
      apiUrl: '${ApiStorageGroup.baseUrl}$filePath$fileName/move',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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

class DeleteFileCall {
  Future<ApiCallResponse> call({
    String? fileUrl = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '${ApiStorageGroup.baseUrl}$fileUrl',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
      },
      params: {
        'fileUrl': fileUrl,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MoveFileNewCall {
  Future<ApiCallResponse> call({
    String? filePath = '',
    String? fileName = '',
    String? destinationPath = '',
    String? destinationBucket = '',
  }) async {
    final ffApiRequestBody = '''
{
  "filePath1": "$filePath",
  "fileName": "$fileName",
  "destinationPath": "$destinationPath",
  "destinationName": "<destinationName>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'moveFileNew',
      apiUrl: '${ApiStorageGroup.baseUrl}$filePath$fileName/move',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
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

/// End apiStorage Group Code

/// Start apiUnits Group Code

class ApiUnitsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static UnitsSearchCall unitsSearchCall = UnitsSearchCall();
  static UnitByIdCall unitByIdCall = UnitByIdCall();
  static UnitsAllCall unitsAllCall = UnitsAllCall();
}

class UnitsSearchCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
  }) async {
    final ffApiRequestBody = '''
{
  "search_terms": "$searchTerms"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'unitsSearch',
      apiUrl: '${ApiUnitsGroup.baseUrl}rpc/fc_units_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? descriptionFull(dynamic response) => getJsonField(
        response,
        r'''$[:].descriptionFull''',
        true,
      ) as List?;
  List? addressFull(dynamic response) => getJsonField(
        response,
        r'''$[:].addressFull''',
        true,
      ) as List?;
}

class UnitByIdCall {
  Future<ApiCallResponse> call({
    int? unitId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'unitById',
      apiUrl: '${ApiUnitsGroup.baseUrl}units?id=eq.$unitId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  int? companyId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].companyId''',
      ));
  int? unitTypeId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].unitTypeId''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
  double? latitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].latitude''',
      ));
  double? longitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].longitude''',
      ));
  String? descriptionFull(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].descriptionFull''',
      ));
  int? unitTypeParentId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].unitTypeParentId''',
      ));
  int? systemParentId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].systemParentId''',
      ));
  int? systemId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].systemId''',
      ));
}

class UnitsAllCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'unitsAll',
      apiUrl: '${ApiUnitsGroup.baseUrl}v_units?select=id,descriptionFull',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

/// End apiUnits Group Code

/// Start apiContracts Group Code

class ApiContractsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static ContractByIdCall contractByIdCall = ContractByIdCall();
  static ServicesBycontractIdCall servicesBycontractIdCall =
      ServicesBycontractIdCall();
}

class ContractByIdCall {
  Future<ApiCallResponse> call({
    int? contractId,
  }) async {
    const ffApiRequestBody = '''
{
  "serach_contract_id": <search_contract_id>,
  "search_terms": "<search_terms>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'contractById',
      apiUrl:
          '${ApiContractsGroup.baseUrl}v_contracts?id=eq.$contractId&select=\'*\'',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class ServicesBycontractIdCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    int? searchContractId,
  }) async {
    final ffApiRequestBody = '''
{
  "search_terms": "$searchTerms",
  "search_contract_id": $searchContractId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'servicesBycontractId',
      apiUrl: '${ApiContractsGroup.baseUrl}rpc/fc_contracts_services_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

/// End apiContracts Group Code

/// Start apiOrdersTypesActivities Group Code

class ApiOrdersTypesActivitiesGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static ActivitiesByOrderTypeIdCall activitiesByOrderTypeIdCall =
      ActivitiesByOrderTypeIdCall();
}

class ActivitiesByOrderTypeIdCall {
  Future<ApiCallResponse> call({
    int? orderTypeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'activitiesByOrderTypeId',
      apiUrl:
          '${ApiOrdersTypesActivitiesGroup.baseUrl}v_orders_types_activities?orderTypeId=eq.$orderTypeId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? activityId(dynamic response) => (getJsonField(
        response,
        r'''$[:].activityId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? orderTypeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].orderTypeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? activityDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].activityDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End apiOrdersTypesActivities Group Code

/// Start apiAssets Group Code

class ApiAssetsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static AssetsSearchCall assetsSearchCall = AssetsSearchCall();
  static AssetsSearchCopyCall assetsSearchCopyCall = AssetsSearchCopyCall();
  static AssetByIdCall assetByIdCall = AssetByIdCall();
}

class AssetsSearchCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
  }) async {
    final ffApiRequestBody = '''
{
  "search_terms": "$searchTerms"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetsSearch',
      apiUrl: '${ApiAssetsGroup.baseUrl}rpc/fc_assets_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? tagId(dynamic response) => (getJsonField(
        response,
        r'''$[:].tagId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? tagDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].tagDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? tagSubId(dynamic response) => (getJsonField(
        response,
        r'''$[:].tagSubId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? tagSubDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].tagSubDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? unitId(dynamic response) => (getJsonField(
        response,
        r'''$[:].unitId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? unitDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].unitDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? statusId(dynamic response) => (getJsonField(
        response,
        r'''$[:].statusId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? statusDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].statusDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AssetsSearchCopyCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
  }) async {
    final ffApiRequestBody = '''
{
  "search_terms": "$searchTerms"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetsSearch Copy',
      apiUrl: '${ApiAssetsGroup.baseUrl}rpc/fc_assets_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  int? tagId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tagId''',
      ));
  String? tagDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tagDescription''',
      ));
  int? tagSubId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tagSubId''',
      ));
  String? tagSubDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].tagSubDescription''',
      ));
  int? unitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].unitId''',
      ));
  int? statusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].statusId''',
      ));
  String? statusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].statusDescription''',
      ));
}

class AssetByIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'assetById',
      apiUrl: '${ApiAssetsGroup.baseUrl}v_assets?id=eq.$assetId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  int? unitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].unitId''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  int? tagId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tagId''',
      ));
  int? tagSubId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tagSubId''',
      ));
  int? statusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].statusId''',
      ));
  String? tagDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tagDescription''',
      ));
  String? tagSubDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].tagSubDescription''',
      ));
  String? statusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].statusDescription''',
      ));
  String? unitDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].unitDescription''',
      ));
}

/// End apiAssets Group Code

/// Start apiAssetsMaterials Group Code

class ApiAssetsMaterialsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static MaterialsByAssetIdCall materialsByAssetIdCall =
      MaterialsByAssetIdCall();
}

class MaterialsByAssetIdCall {
  Future<ApiCallResponse> call({
    int? assetId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'materialsByAssetId',
      apiUrl:
          '${ApiAssetsMaterialsGroup.baseUrl}v_assets_materials?assetId=eq.$assetId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  List<int>? assetId(dynamic response) => (getJsonField(
        response,
        r'''$[:].assetId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? materialId(dynamic response) => (getJsonField(
        response,
        r'''$[:].materialId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? materialCode(dynamic response) => (getJsonField(
        response,
        r'''$[:].materialCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? materialDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].materialDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? serial(dynamic response) => (getJsonField(
        response,
        r'''$[:].serial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localization(dynamic response) => (getJsonField(
        response,
        r'''$[:].localization''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End apiAssetsMaterials Group Code

/// Start apiAssetsTags Group Code

class ApiAssetsTagsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static AssetTagsAllCall assetTagsAllCall = AssetTagsAllCall();
}

class AssetTagsAllCall {
  Future<ApiCallResponse> call({
    int? companyId,
    int? departmentId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'assetTagsAll',
      apiUrl:
          '${ApiAssetsTagsGroup.baseUrl}v_assets_tags?companyId=eg.$companyId&departmentId=eq.$departmentId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
      },
      params: {
        'companyId': companyId,
        'departmentId': departmentId,
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
  int? unitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].unitId''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  int? tagId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tagId''',
      ));
  int? tagSubId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tagSubId''',
      ));
  int? statusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].statusId''',
      ));
  String? tagDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tagDescription''',
      ));
  String? tagSubDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].tagSubDescription''',
      ));
  String? statusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].statusDescription''',
      ));
}

/// End apiAssetsTags Group Code

/// Start apiOrdersParent Group Code

class ApiOrdersParentGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static SearchRequestedServicesByUnitIdCall
      searchRequestedServicesByUnitIdCall =
      SearchRequestedServicesByUnitIdCall();
  static OrderParenByIdCall orderParenByIdCall = OrderParenByIdCall();
}

class SearchRequestedServicesByUnitIdCall {
  Future<ApiCallResponse> call({
    String? searchTerms = '',
    int? unitId,
    int? limitCount = 25,
  }) async {
    final ffApiRequestBody = '''
{
  "search_terms": "$searchTerms",
  "unit_id": $unitId,
  "limit_count": $limitCount
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchRequestedServicesByUnitId',
      apiUrl:
          '${ApiOrdersParentGroup.baseUrl}rpc/fc_order_parent_new_by_units_search',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? descriptionFull(dynamic response) => getJsonField(
        response,
        r'''$[:].descriptionFull''',
        true,
      ) as List?;
  List? addressFull(dynamic response) => getJsonField(
        response,
        r'''$[:].addressFull''',
        true,
      ) as List?;
}

class OrderParenByIdCall {
  Future<ApiCallResponse> call({
    int? orderId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'orderParenById',
      apiUrl:
          '${ApiOrdersParentGroup.baseUrl}v_orders_parent?id=eq.$orderId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

/// End apiOrdersParent Group Code

/// Start apiOrders Group Code

class ApiOrdersGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static OrderByIdCall orderByIdCall = OrderByIdCall();
  static OrdersByStatusIdCall ordersByStatusIdCall = OrdersByStatusIdCall();
  static OrdersByStatusIdAndDateCall ordersByStatusIdAndDateCall =
      OrdersByStatusIdAndDateCall();
  static FiltersCall filtersCall = FiltersCall();
}

class OrderByIdCall {
  Future<ApiCallResponse> call({
    int? orderId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'orderById',
      apiUrl: '${ApiOrdersGroup.baseUrl}v_orders?id=eq.$orderId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class OrdersByStatusIdCall {
  Future<ApiCallResponse> call({
    int? statusId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ordersByStatusId',
      apiUrl:
          '${ApiOrdersGroup.baseUrl}v_orders?statusId=eq.$statusId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class OrdersByStatusIdAndDateCall {
  Future<ApiCallResponse> call({
    int? statusId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ordersByStatusIdAndDate',
      apiUrl:
          '${ApiOrdersGroup.baseUrl}v_orders?statusId=eq.$statusId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class FiltersCall {
  Future<ApiCallResponse> call({
    List<int>? searchUnitsList,
  }) async {
    final searchUnits = _serializeList(searchUnitsList);

    final ffApiRequestBody = '''
{
  "search_units": $searchUnits
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'filters',
      apiUrl: '${ApiOrdersGroup.baseUrl}rpc/fc_v_orders_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

/// End apiOrders Group Code

/// Start apiProfilesPermissions Group Code

class ApiProfilesPermissionsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static IsPermissionCall isPermissionCall = IsPermissionCall();
}

class IsPermissionCall {
  Future<ApiCallResponse> call({
    int? profileId,
    int? appPageId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'isPermission',
      apiUrl:
          '${ApiProfilesPermissionsGroup.baseUrl}v_profiles_permissions?profileId=eq.$profileId&appPageId=eq.$appPageId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  int? profileId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].profileId''',
      ));
  int? appPageId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].appPageId''',
      ));
  bool? isPermission(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isPermission''',
      ));
}

/// End apiProfilesPermissions Group Code

/// Start apiOrdersFollowers Group Code

class ApiOrdersFollowersGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static OrderFollowedCall orderFollowedCall = OrderFollowedCall();
  static FollowersByOrderIdCall followersByOrderIdCall =
      FollowersByOrderIdCall();
}

class OrderFollowedCall {
  Future<ApiCallResponse> call({
    int? orderId,
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'orderFollowed',
      apiUrl:
          '${ApiOrdersFollowersGroup.baseUrl}ordersFollowers?userId=eq.$userId&orderId=eq.$orderId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].userId''',
      ));
  int? orderId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderId''',
      ));
}

class FollowersByOrderIdCall {
  Future<ApiCallResponse> call({
    int? orderId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'followersByOrderId',
      apiUrl:
          '${ApiOrdersFollowersGroup.baseUrl}v_orders_followers?orderId=eq.$orderId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].userId''',
      ));
  int? orderId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderId''',
      ));
}

/// End apiOrdersFollowers Group Code

/// Start apiOrdersVisitsAssets Group Code

class ApiOrdersVisitsAssetsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static AssetsByOrderVisitIdCall assetsByOrderVisitIdCall =
      AssetsByOrderVisitIdCall();
  static OrdersVisitsAssetsByUnitAssetTagCall
      ordersVisitsAssetsByUnitAssetTagCall =
      OrdersVisitsAssetsByUnitAssetTagCall();
  static IdByvisitIdNassetIdCall idByvisitIdNassetIdCall =
      IdByvisitIdNassetIdCall();
  static OrderVisitAssetByIdCall orderVisitAssetByIdCall =
      OrderVisitAssetByIdCall();
  static AssetsByUnitTagCall assetsByUnitTagCall = AssetsByUnitTagCall();
}

class AssetsByOrderVisitIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitId = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'assetsByOrderVisitId',
      apiUrl:
          '${ApiOrdersVisitsAssetsGroup.baseUrl}v_orders_visits_assets?orderVisitId=eq.$orderVisitId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  List<int>? assetId(dynamic response) => (getJsonField(
        response,
        r'''$[:].assetId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? processingId(dynamic response) => (getJsonField(
        response,
        r'''$[:].processingId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class OrdersVisitsAssetsByUnitAssetTagCall {
  Future<ApiCallResponse> call({
    int? searchUnitId = 1,
    int? searchAssetTagId = 1,
  }) async {
    final ffApiRequestBody = '''
{
  "search_unit_id": $searchUnitId,
  "search_asset_tag_id": $searchAssetTagId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ordersVisitsAssetsByUnitAssetTag',
      apiUrl:
          '${ApiOrdersVisitsAssetsGroup.baseUrl}rpc/fc_orders_visits_assets_by_unit_id_tag_id',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class IdByvisitIdNassetIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitId = 1,
    int? assetId = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'idByvisitIdNassetId',
      apiUrl:
          '${ApiOrdersVisitsAssetsGroup.baseUrl}v_orders_visits_assets?orderVisitId=eq.$orderVisitId&assetId=eq.$assetId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  int? afterUnitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterUnitId''',
      ));
  int? afterTagId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterTagId''',
      ));
  String? afterTagDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterTagDescription''',
      ));
  int? afterTagSubId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterTagSubId''',
      ));
  String? afterTagSubDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterTagSubDescription''',
      ));
  int? afterStatusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterStatusId''',
      ));
  String? afterStatusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterStatusDescription''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
}

class OrderVisitAssetByIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitAssetId = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'orderVisitAssetById',
      apiUrl:
          '${ApiOrdersVisitsAssetsGroup.baseUrl}v_orders_visits_assets?id=eq.$orderVisitAssetId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  int? orderVisitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].orderVisitId''',
      ));
  int? assetId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].assetId''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  bool? isMoved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isMoved''',
      ));
  int? beforeUnitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeUnitId''',
      ));
  String? beforeUnitDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].beforeUnitDescription''',
      ));
  int? beforeTagId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeTagId''',
      ));
  String? beforeTagDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].beforeTagDescription''',
      ));
  int? beforeTagSubId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeTagSubId''',
      ));
  String? beforeTagSubDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].beforeTagSubDescription''',
      ));
  int? beforeStatusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeStatusId''',
      ));
  String? beforeStatusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].beforeStatusDescription''',
      ));
  String? beforeComments(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].beforeComments''',
      ));
  String? beforeImgFilePath(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].beforeImgFilePath''',
      ));
  String? beforeImgFileName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].beforeImgFileName''',
      ));
  int? beforeRecord(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeRecord''',
      ));
  int? beforeLatitude(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeLatitude''',
      ));
  int? beforeLongitude(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].beforeLongitude''',
      ));
  int? afterUnitId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterUnitId''',
      ));
  String? afterUnitDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterUnitDescription''',
      ));
  int? afterTagId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterTagId''',
      ));
  String? afterTagDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterTagDescription''',
      ));
  int? afterTagSubId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterTagSubId''',
      ));
  String? afterTagSubDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterTagSubDescription''',
      ));
  int? afterStatusId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterStatusId''',
      ));
  String? afterStatusDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].afterStatusDescription''',
      ));
  String? afterComments(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].afterComments''',
      ));
  String? afterImgFilePath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].afterImgFilePath''',
      ));
  String? afterImgFileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].afterImgFileName''',
      ));
  int? afterRecord(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterRecord''',
      ));
  int? afterLatitude(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterLatitude''',
      ));
  int? afterLongitude(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].afterLongitude''',
      ));
  int? processingId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].processingId''',
      ));
  String? processingDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].processingDescription''',
      ));
  String? movedComments(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].movedComments''',
      ));
  double? beforeUnitLatitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].beforeUnitLatitude''',
      ));
  double? beforeUnitLongitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].beforeUnitLongitude''',
      ));
  double? afterUnitLatitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].afterUnitLatitude''',
      ));
  double? afterUnitLongitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].afterUnitLongitude''',
      ));
}

class AssetsByUnitTagCall {
  Future<ApiCallResponse> call({
    int? searchUnitId,
    int? searchAssetTagId,
  }) async {
    final ffApiRequestBody = '''
{
  "search_unit_id": $searchUnitId,
  "search_asset_tag_id": $searchAssetTagId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'assetsByUnitTag',
      apiUrl:
          '${ApiOrdersVisitsAssetsGroup.baseUrl}rpc/fc_assets_by_orders_visits_assets_unit_id_tag_id',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiOrdersVisitsAssets Group Code

/// Start apiOrdersVisitsAssetsActivities Group Code

class ApiOrdersVisitsAssetsActivitiesGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static ActivitiesByOrderVisitAssetIdCall activitiesByOrderVisitAssetIdCall =
      ActivitiesByOrderVisitAssetIdCall();
}

class ActivitiesByOrderVisitAssetIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitAssetId = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'activitiesByOrderVisitAssetId',
      apiUrl:
          '${ApiOrdersVisitsAssetsActivitiesGroup.baseUrl}v_orders_visits_assets_activities?orderVisitAssetId=eq.$orderVisitAssetId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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
  List<int>? assetId(dynamic response) => (getJsonField(
        response,
        r'''$[:].assetId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? processingId(dynamic response) => (getJsonField(
        response,
        r'''$[:].processingId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End apiOrdersVisitsAssetsActivities Group Code

/// Start apiOrdersVisits Group Code

class ApiOrdersVisitsGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static OrderVisitByIdCall orderVisitByIdCall = OrderVisitByIdCall();
  static ServicesByOrderVisitIdCall servicesByOrderVisitIdCall =
      ServicesByOrderVisitIdCall();
  static PriceServicesByOrderVisitIdCall priceServicesByOrderVisitIdCall =
      PriceServicesByOrderVisitIdCall();
  static PriceServicesUpdateByOrderVisitIdCall
      priceServicesUpdateByOrderVisitIdCall =
      PriceServicesUpdateByOrderVisitIdCall();
  static SearchFiltersCall searchFiltersCall = SearchFiltersCall();
}

class OrderVisitByIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitId = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'orderVisitById',
      apiUrl:
          '${ApiOrdersVisitsGroup.baseUrl}v_orders_visits?id=eq.$orderVisitId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class ServicesByOrderVisitIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'servicesByOrderVisitId',
      apiUrl:
          '${ApiOrdersVisitsGroup.baseUrl}v_orders_visits_services?orderVisitId=eq.$orderVisitId',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class PriceServicesByOrderVisitIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'priceServicesByOrderVisitId',
      apiUrl:
          '${ApiOrdersVisitsGroup.baseUrl}v_orders_visits_services_price_total?orderVisitId=eq.$orderVisitId',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class PriceServicesUpdateByOrderVisitIdCall {
  Future<ApiCallResponse> call({
    int? orderVisitId,
    double? priceServices,
  }) async {
    final ffApiRequestBody = '''
{
  "id": $orderVisitId,
  "priceServices": $priceServices
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'priceServicesUpdateByOrderVisitId',
      apiUrl:
          '${ApiOrdersVisitsGroup.baseUrl}ordersVisits?id=eq.$orderVisitId',
      callType: ApiCallType.PATCH,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

class SearchFiltersCall {
  Future<ApiCallResponse> call({
    List<int>? ordersTypesIdsList,
    List<int>? processingIdsList,
    List<int>? unitsIdsList,
    List<int>? ordersTypesSubsIdsList,
    List<int>? systemsParentsIdsList,
    List<int>? systemsIdsList,
    List<int>? unitsTypesParentsIdsList,
    List<int>? contractsIdsList,
  }) async {
    final ordersTypesIds = _serializeList(ordersTypesIdsList);
    final processingIds = _serializeList(processingIdsList);
    final unitsIds = _serializeList(unitsIdsList);
    final ordersTypesSubsIds = _serializeList(ordersTypesSubsIdsList);
    final systemsParentsIds = _serializeList(systemsParentsIdsList);
    final systemsIds = _serializeList(systemsIdsList);
    final unitsTypesParentsIds = _serializeList(unitsTypesParentsIdsList);
    final contractsIds = _serializeList(contractsIdsList);

    final ffApiRequestBody = '''
{
  "orders_types_ids": $ordersTypesIds,
  "orders_types_subs_ids": $ordersTypesSubsIds,
  "processing_ids": $processingIds,
  "units_ids": $unitsIds,
  "systems_parents_ids": $systemsParentsIds,
  "systems_ids": $systemsIds,
  "units_types_parents_ids": $unitsTypesParentsIds,
  "contracts_ids": $contractsIds
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchFilters',
      apiUrl:
          '${ApiOrdersVisitsGroup.baseUrl}rpc/fc_orders_visits_search_filters',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
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

/// End apiOrdersVisits Group Code

/// Start apiUnitsTypes Group Code

class ApiUnitsTypesGroup {
  static String baseUrl = 'https://hssopxcprokinupxvrtw.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apiKey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
    'Content-Type': 'application/json',
  };
  static UnitTypeByIdCall unitTypeByIdCall = UnitTypeByIdCall();
}

class UnitTypeByIdCall {
  Future<ApiCallResponse> call({
    int? unitTypeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'unitTypeById',
      apiUrl:
          '${ApiUnitsTypesGroup.baseUrl}unitsTypes?id=eq.$unitTypeId&select=\'*\'',
      callType: ApiCallType.GET,
      headers: {
        'apiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhzc29weGNwcm9raW51cHh2cnR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkzODQ2NTgsImV4cCI6MjAxNDk2MDY1OH0.8GYsJN0LgL8gnKVKtojALRfxteiqdYSJo2KJSJe27K0',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
      );
  dynamic companyId(dynamic response) => getJsonField(
        response,
        r'''$[:].companyId''',
      );
  dynamic parentId(dynamic response) => getJsonField(
        response,
        r'''$[:].parentId''',
      );
  dynamic isAvailable(dynamic response) => getJsonField(
        response,
        r'''$[:].isAvailable''',
      );
  dynamic isDeleted(dynamic response) => getJsonField(
        response,
        r'''$[:].isDeleted''',
      );
}

/// End apiUnitsTypes Group Code

/// Start apiMinio Group Code

class ApiMinioGroup {
  static String baseUrl = 'http://161.97.160.86:9090/';
  static Map<String, String> headers = {
    'accessKey': 'JdiyOB5kjWxd8UyhuivS',
    'secretKey': 'Fsf173qGPZJ9J9ot4jOnSR3Vg3CE7UlZym0wJcB8',
  };
  static UploadFileCall uploadFileCall = UploadFileCall();
}

class UploadFileCall {
  Future<ApiCallResponse> call({
    String? fileName = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadFile',
      apiUrl: '${ApiMinioGroup.baseUrl}siges-bucket/$fileName',
      callType: ApiCallType.POST,
      headers: {
        'accessKey': 'JdiyOB5kjWxd8UyhuivS',
        'secretKey': 'Fsf173qGPZJ9J9ot4jOnSR3Vg3CE7UlZym0wJcB8',
      },
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End apiMinio Group Code

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
