import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class GitHubRepositoryListState with _$GitHubRepositoryListState {
  factory GitHubRepositoryListState() = _GitHubRepositoryListState;
}
