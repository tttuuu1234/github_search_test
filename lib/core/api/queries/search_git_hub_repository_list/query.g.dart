// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchGitHubRepositoryListQuery _$$_SearchGitHubRepositoryListQueryFromJson(
        Map<String, dynamic> json) =>
    _$_SearchGitHubRepositoryListQuery(
      keyword: json['q'] as String,
      page: json['page'] as int,
    );

Map<String, dynamic> _$$_SearchGitHubRepositoryListQueryToJson(
        _$_SearchGitHubRepositoryListQuery instance) =>
    <String, dynamic>{
      'q': instance.keyword,
      'page': instance.page,
    };
