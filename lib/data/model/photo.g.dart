// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      promoted_at: json['promoted_at'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      color: json['color'] as String?,
      blur_hash: json['blur_hash'] as String?,
      description: json['description'] as String?,
      alt_description: json['alt_description'] as String?,
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      likes: json['likes'] as int?,
      liked_by_user: json['liked_by_user'] as bool?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'promoted_at': instance.promoted_at,
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blur_hash,
      'description': instance.description,
      'alt_description': instance.alt_description,
      'urls': instance.urls,
      'links': instance.links,
      'likes': instance.likes,
      'liked_by_user': instance.liked_by_user,
      'user': instance.user,
    };

_$_Urls _$$_UrlsFromJson(Map<String, dynamic> json) => _$_Urls(
      raw: json['raw'] as String?,
      full: json['full'] as String?,
      regular: json['regular'] as String?,
      small: json['small'] as String?,
      thumb: json['thumb'] as String?,
      small_s3: json['small_s3'] as String?,
    );

Map<String, dynamic> _$$_UrlsToJson(_$_Urls instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
      'small_s3': instance.small_s3,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      self: json['self'] as String?,
      html: json['html'] as String?,
      download: json['download'] as String?,
      download_location: json['download_location'] as String?,
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'download_location': instance.download_location,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      username: json['username'] as String?,
      name: json['name'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      location: json['location'] as String?,
      links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
      profile_image: UserProfileImage.fromJson(
          json['profile_image'] as Map<String, dynamic>),
      total_photos: json['total_photos'] as int?,
      total_likes: json['total_likes'] as int?,
      social: UserSocialMediaProfiles.fromJson(
          json['social'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'location': instance.location,
      'links': instance.links,
      'profile_image': instance.profile_image,
      'total_photos': instance.total_photos,
      'total_likes': instance.total_likes,
      'social': instance.social,
    };

_$_UserLinks _$$_UserLinksFromJson(Map<String, dynamic> json) => _$_UserLinks(
      self: json['self'] as String?,
      html: json['html'] as String?,
      photos: json['photos'] as String?,
      likes: json['likes'] as String?,
      portfolio: json['portfolio'] as String?,
      following: json['following'] as String?,
      followers: json['followers'] as String?,
    );

Map<String, dynamic> _$$_UserLinksToJson(_$_UserLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers,
    };

_$_UserProfileImage _$$_UserProfileImageFromJson(Map<String, dynamic> json) =>
    _$_UserProfileImage(
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$_UserProfileImageToJson(_$_UserProfileImage instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$_UserSocialMediaProfiles _$$_UserSocialMediaProfilesFromJson(
        Map<String, dynamic> json) =>
    _$_UserSocialMediaProfiles(
      instagram_username: json['instagram_username'] as String?,
      portfolio_url: json['portfolio_url'] as String?,
      twitter_username: json['twitter_username'] as String?,
      paypal_email: json['paypal_email'] as String?,
    );

Map<String, dynamic> _$$_UserSocialMediaProfilesToJson(
        _$_UserSocialMediaProfiles instance) =>
    <String, dynamic>{
      'instagram_username': instance.instagram_username,
      'portfolio_url': instance.portfolio_url,
      'twitter_username': instance.twitter_username,
      'paypal_email': instance.paypal_email,
    };
