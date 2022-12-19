// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchGitHubRepositoryListRequest
    _$$_SearchGitHubRepositoryListRequestFromJson(Map<String, dynamic> json) =>
        _$_SearchGitHubRepositoryListRequest(
          keyword: json['q'] as String,
          page: json['page'] as int,
        );

Map<String, dynamic> _$$_SearchGitHubRepositoryListRequestToJson(
        _$_SearchGitHubRepositoryListRequest instance) =>
    <String, dynamic>{
      'q': instance.keyword,
      'page': instance.page,
    };
