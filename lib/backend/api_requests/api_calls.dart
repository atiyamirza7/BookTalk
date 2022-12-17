import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchBooksCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Books',
      apiUrl: 'https://www.googleapis.com/books/v1/volumes?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'key': "AIzaSyAzGuT72AteFmEBP7HZ1KoQ9miWNul0qL0",
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic searchInfos(dynamic response) => getJsonField(
        response,
        r'''$.items[:].searchInfo''',
        true,
      );
  static dynamic smallImages(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.imageLinks.smallThumbnail''',
        true,
      );
  static dynamic images(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.imageLinks.thumbnail''',
        true,
      );
  static dynamic avgRatings(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.averageRating''',
        true,
      );
  static dynamic numRatings(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.ratingsCount''',
        true,
      );
  static dynamic categories(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.categories''',
        true,
      );
  static dynamic pageCounts(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.pageCount''',
        true,
      );
  static dynamic descriptions(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.description''',
        true,
      );
  static dynamic publishedDates(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.publishedDate''',
        true,
      );
  static dynamic authors(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.authors''',
        true,
      );
  static dynamic subtitles(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.subtitle''',
        true,
      );
  static dynamic titles(dynamic response) => getJsonField(
        response,
        r'''$.items[:].volumeInfo.title''',
        true,
      );
  static dynamic ids(dynamic response) => getJsonField(
        response,
        r'''$.items[:].id''',
        true,
      );
  static dynamic items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      );
}

class GetVolumeCall {
  static Future<ApiCallResponse> call({
    String? volumeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Volume',
      apiUrl: 'https://www.googleapis.com/books/v1/volumes/${volumeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyAzGuT72AteFmEBP7HZ1KoQ9miWNul0qL0",
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic author(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.authors''',
        true,
      );
  static dynamic publishedDate(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.publishedDate''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.description''',
      );
  static dynamic pageCount(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.pageCount''',
      );
  static dynamic avgRating(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.averageRating''',
      );
  static dynamic ratingCount(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.ratingsCount''',
      );
  static dynamic categorie(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.categories''',
        true,
      );
  static dynamic smallImage(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.imageLinks.smallThumbnail''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.imageLinks.thumbnail''',
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.title''',
      );
  static dynamic subtitle(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.subtitle''',
      );
  static dynamic mediumPic(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.imageLinks.medium''',
      );
  static dynamic smallPic(dynamic response) => getJsonField(
        response,
        r'''$.volumeInfo.imageLinks.small''',
      );
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
