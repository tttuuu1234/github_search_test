import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'path.dart';

class HttpClient {
  final accessToken = const String.fromEnvironment("GIT_HUB_ACCESS_TOKEN");

  Future<http.Response> get({
    required ApiPath path,
  }) async {
    log('---Start http request get---');
    final url = Uri.https(
      'api.github.com',
      '/${path.value}',
    );
    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/vnd.github+json',
        'Authorization': 'Bearer $accessToken',
      },
    );
    debugPrint(response.headers.toString());
    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    log('---Finish http request get---');

    switch (response.statusCode) {
      case 404:
        throw Exception('404です！！！');
      default:
    }

    return response;
  }
}
