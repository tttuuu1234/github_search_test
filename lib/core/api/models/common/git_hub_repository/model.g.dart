// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepositoryModel _$$_GitHubRepositoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_GitHubRepositoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      startCount: json['stargazers_count'] as int?,
      language: json['language'] as String?,
      owner: OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GitHubRepositoryModelToJson(
        _$_GitHubRepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.startCount,
      'language': instance.language,
      'owner': instance.owner,
    };

_$_OwnerModel _$$_OwnerModelFromJson(Map<String, dynamic> json) =>
    _$_OwnerModel(
      name: json['login'] as String,
      avaterUrl: json['avater_url'] as String?,
    );

Map<String, dynamic> _$$_OwnerModelToJson(_$_OwnerModel instance) =>
    <String, dynamic>{
      'login': instance.name,
      'avater_url': instance.avaterUrl,
    };
