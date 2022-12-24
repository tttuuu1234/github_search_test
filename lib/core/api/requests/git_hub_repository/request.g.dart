// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepositoryRequest _$$_GitHubRepositoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GitHubRepositoryRequest(
      ownerName: json['owner'] as String,
      repoName: json['repo'] as int,
    );

Map<String, dynamic> _$$_GitHubRepositoryRequestToJson(
        _$_GitHubRepositoryRequest instance) =>
    <String, dynamic>{
      'owner': instance.ownerName,
      'repo': instance.repoName,
    };
