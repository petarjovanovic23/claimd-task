import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  final String username;
  final String name;
  final String biography;
  final String followingCount;
  final String followsCount;
  final String postsCount;
  final String imageUrl;
  final bool isVerified;
  final bool isPrivate;

  User({
    required this.username,
    required this.name,
    required this.biography,
    required this.followingCount,
    required this.followsCount,
    required this.postsCount,
    required this.imageUrl,
    required this.isVerified,
    required this.isPrivate,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
