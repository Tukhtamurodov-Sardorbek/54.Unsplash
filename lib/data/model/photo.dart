import 'package:freezed_annotation/freezed_annotation.dart';
part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    required String? id,
    required String? created_at,
    required String? updated_at,
    required String? promoted_at,
    required double? width,
    required double? height,
    required String? color,
    required String? blur_hash,
    required String? description,
    required String? alt_description,
    required Urls urls,
    required Links links,
    required int? likes,
    required bool? liked_by_user,
    required User user,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) =>
      _$PhotoFromJson(json);
}

@freezed
class Urls with _$Urls {
  factory Urls({
    required String? raw,
    required String? full,
    required String? regular,
    required String? small,
    required String? thumb,
    required String? small_s3,
  }) = _Urls;

  factory Urls.fromJson(Map<String, dynamic> json) =>
      _$UrlsFromJson(json);
}

@freezed
class Links with _$Links {
  factory Links({
    required String? self,
    required String? html,
    required String? download,
    required String? download_location,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) =>
      _$LinksFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    required String? id,
    required String? username,
    required String? name,
    required String? first_name,
    required String? last_name,
    required String? location,
    required UserLinks links,
    required UserProfileImage profile_image,
    required int? total_photos,
    required int? total_likes,
    required UserSocialMediaProfiles social,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@freezed
class UserLinks with _$UserLinks {
  factory UserLinks({
    required String? self,
    required String? html,
    required String? photos,
    required String? likes,
    required String? portfolio,
    required String? following,
    required String? followers,
  }) = _UserLinks;

  factory UserLinks.fromJson(Map<String, dynamic> json) =>
      _$UserLinksFromJson(json);
}

@freezed
class UserProfileImage with _$UserProfileImage {
  factory UserProfileImage({
    required String? small,
    required String? medium,
    required String? large,
  }) = _UserProfileImage;

  factory UserProfileImage.fromJson(Map<String, dynamic> json) =>
      _$UserProfileImageFromJson(json);
}

@freezed
class UserSocialMediaProfiles with _$UserSocialMediaProfiles {
  factory UserSocialMediaProfiles({
    required String? instagram_username,
    required String? portfolio_url,
    required String? twitter_username,
    required String? paypal_email,
  }) = _UserSocialMediaProfiles;

  factory UserSocialMediaProfiles.fromJson(Map<String, dynamic> json) =>
      _$UserSocialMediaProfilesFromJson(json);
}