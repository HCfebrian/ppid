import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ServiceFetchCall {
  static Future<ApiCallResponse> call({
    String? path = 'filter[site_id][_eq]=2&filter[type][_eq]=2',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'serviceFetch',
      apiUrl: 'https://suhu-admin.tlabdemo.com/items/services?limit=8&$path',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class BannerFatchCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'bannerFatch',
      apiUrl: 'https://suhu-admin.tlabdemo.com/items/banners',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataList(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class TestimoniFetchCall {
  static Future<ApiCallResponse> call({
    String? filter = 'filter[site_id][_eq]=2&sort=order',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testimoniFetch',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/testimonies?meta=*&page=1&limit=10&$filter',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataTestimoni(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class TrainingCategoriesFetchCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'trainingCategoriesFetch',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/training_categories?meta=*&page=1&limit=10&fields=&search=',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TrainingFetchCall {
  static Future<ApiCallResponse> call({
    String? path = 'filter[site_id][_eq]=2',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'trainingFetch',
      apiUrl: 'https://suhu-admin.tlabdemo.com/items/trainings?meta=*&$path',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataResponseTraining(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class PatnershipFetchCall {
  static Future<ApiCallResponse> call({
    String? siteId = '[site_id]',
    String? eq = '[_eq]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'patnershipFetch',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/partnerships?meta=*&page=1&limit=10&fields=&search=&filter$siteId$eq=2&sort=order',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataPartnership(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class JourneyFetchCall {
  static Future<ApiCallResponse> call({
    String? siteId = '[site_id]',
    String? eq = '[_eq]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'journeyFetch',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/journeys?filter$siteId$eq=2&sort=year',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FaqFetchCall {
  static Future<ApiCallResponse> call({
    String? siteId = '[site_id]',
    String? eq = '[_eq]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'faqFetch',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/faqs?meta=*&page=1&limit=10&search=&filter$siteId$eq=2&sort=order',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class AboutUsHomePageCall {
  static Future<ApiCallResponse> call({
    String? param = 'filter[site_id][_eq]=2&filter[type][_eq]=4',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'aboutUsHomePage',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/content_managements?fields=*%2Ccreated_by.*&$param',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataResponse(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class BlogHomeCall {
  static Future<ApiCallResponse> call({
    String? path = 'filter[site_id][_eq]=2&filter[type][_eq]=3',
    String? limit = '8',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'blogHome',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/content_managements?limit=$limit&sort=-created_at&fields=*%2Ccreated_by.*&$path',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataBlogHome(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class SearchPelatihanCall {
  static Future<ApiCallResponse> call({
    String? pathDefault =
        'limit=10&filter[site_id][_eq]=2&filter[start_date][_gte]=2024-01-26&order=start_date',
    String? searchQuery = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchPelatihan',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/trainings?meta=*&$pathDefault&search=$searchQuery',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataPencarian(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class DetilPelatihanCall {
  static Future<ApiCallResponse> call({
    String? path = '&filter[site_id][_eq]=2&fields=*.*.*&filter[slug][_eq]=',
    String? slug = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'detilPelatihan',
      apiUrl:
          'https://suhu-admin.tlabdemo.com/items/trainings?meta=*$path$slug',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? dataDetailPelatihan(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
