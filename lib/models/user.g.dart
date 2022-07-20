// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      username: json['username'] as String,
      name: json['name'] as String,
      biography: json['biography'] as String,
      followingCount: json['following_count'] as String,
      followsCount: json['follows_count'] as String,
      postsCount: json['posts_count'] as String,
      imageUrl: json['image_url'] as String,
      isVerified: json['is_verified'] as bool,
      isPrivate: json['is_private'] as bool,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'biography': instance.biography,
      'following_count': instance.followingCount,
      'follows_count': instance.followsCount,
      'posts_count': instance.postsCount,
      'image_url': instance.imageUrl,
      'is_verified': instance.isVerified,
      'is_private': instance.isPrivate,
    };
