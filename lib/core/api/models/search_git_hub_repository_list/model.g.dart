// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchGitHubRepositoryListModel _$$_SearchGitHubRepositoryListModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchGitHubRepositoryListModel(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      list: (json['items'] as List<dynamic>)
          .map((e) => GitHubRepositoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchGitHubRepositoryListModelToJson(
        _$_SearchGitHubRepositoryListModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.list,
    };
