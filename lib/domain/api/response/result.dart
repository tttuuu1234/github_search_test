import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'result.freezed.dart';

// Result型はGitHubRepository検索アプリにおいては必要ないかなーという感じ
// Httpステータス的には成功だけど、サーバー内部の処理で上手くいかなかった場合のために、
// 「success」や「failure」の項目をresponseとして以下のような形で返してくれたらアプリ側でハンドリングしやすいから、お願いしたいかも
// {
//   'data': {
//      'status': 'success' or 'failure',
//      'list': []
//    }
// }
@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result({
    required ResultStatus status,
    required String msg,
    required T? data,
  }) = _Result<T>;

  factory Result.fromResponse({
    required Response response,
    required T Function(dynamic body) fromJson,
  }) {
    final status = _getStatus(response);
    final message = _getMessage(status);
    final bodyString = utf8.decode(response.bodyBytes);
    final body = jsonDecode(bodyString) as dynamic;
    final data = ResultStatus.failure == status ? null : fromJson(body);

    return Result<T>(
      status: status,
      msg: message,
      data: data,
    );
  }

  // bool get isSuccess => ResultStatus.success == status;

  // bool get isFailure => ResultStatus.failure == status;
}

enum ResultStatus {
  success,
  failure,
  unknown,
}

// ここは、statusCodeというよりも、サーバーから「success」か「failure」かでcase文の条件作成する
ResultStatus _getStatus(Response response) {
  var resultStatus = ResultStatus.unknown;
  switch (response.statusCode) {
    case 200:
      resultStatus = ResultStatus.success;
      break;
    case 404:
      resultStatus = ResultStatus.failure;
      break;
    default:
      resultStatus = ResultStatus.unknown;
  }

  return resultStatus;
}

String _getMessage(ResultStatus resultStatus) {
  var message = '';
  switch (resultStatus) {
    case ResultStatus.success:
      message = '成功しました。';
      break;
    case ResultStatus.failure:
      message = '失敗しました。';
      break;
    case ResultStatus.unknown:
      message = '再度お試しください。';
      break;
  }

  return message;
}
