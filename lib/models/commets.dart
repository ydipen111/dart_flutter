import 'package:freezed_annotation/freezed_annotation.dart';

part 'commets.freezed.dart'; // Or 'comments.freezed.dart' if corrected
part 'commets.g.dart'; // Or 'comments.g.dart' if corrected

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default(0) int id,
    @Default('') String body,
    @Default(0) int postId,
    @Default(0) int likes,
    @Default(User()) User user,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default('') String username,
    @Default('') String fullName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
