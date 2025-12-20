import 'package:json_annotation/json_annotation.dart';

part 'app_users.g.dart';

@JsonSerializable()
class AppUsers {
  final String uid;
  final String? name;
  final String email;

  @JsonKey(name: 'profile_pic_url')
  final String? profilePictureUrl;

  @JsonKey(name: 'user_type')
  final List<String> userType;

  @JsonKey(name: 'age_of_learners')
  final List<String> ageofLearners;

  AppUsers({
    required this.uid,
    this.name,
    required this.email,
    this.profilePictureUrl,
    this.userType = const [],
    this.ageofLearners = const [],
  });

  factory AppUsers.fromJson(Map<String, dynamic> json) =>
      _$AppUsersFromJson(json);

  Map<String, dynamic> toJson() => _$AppUsersToJson(this);

  AppUsers copyWith({
    String? uid,
    String? name,
    String? email,
    String? profilePictureUrl,
    List<String>? userType,
    List<String>? ageofLearners,
  }) {
    return AppUsers(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      userType: userType ?? this.userType,
      ageofLearners: ageofLearners ?? this.ageofLearners,
    );
  }
}

