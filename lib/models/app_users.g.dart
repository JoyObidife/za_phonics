// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUsers _$AppUsersFromJson(Map<String, dynamic> json) => AppUsers(
  uid: json['uid'] as String,
  name: json['name'] as String?,
  email: json['email'] as String,
  profilePictureUrl: json['profile_pic_url'] as String?,
  userType:
      (json['user_type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  ageofLearners:
      (json['age_of_learners'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$AppUsersToJson(AppUsers instance) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'email': instance.email,
  'profile_pic_url': instance.profilePictureUrl,
  'user_type': instance.userType,
  'age_of_learners': instance.ageofLearners,
};
