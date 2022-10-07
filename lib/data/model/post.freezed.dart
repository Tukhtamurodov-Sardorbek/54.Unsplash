// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get blur_hash => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get alt_description => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  bool? get liked_by_user => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      double? width,
      double? height,
      String? color,
      String? blur_hash,
      String? description,
      String? alt_description,
      Urls urls,
      Links links,
      int? likes,
      bool? liked_by_user,
      User user});

  $UrlsCopyWith<$Res> get urls;
  $LinksCopyWith<$Res> get links;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blur_hash = freezed,
    Object? description = freezed,
    Object? alt_description = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? likes = freezed,
    Object? liked_by_user = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blur_hash: blur_hash == freezed
          ? _value.blur_hash
          : blur_hash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      alt_description: alt_description == freezed
          ? _value.alt_description
          : alt_description // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_by_user: liked_by_user == freezed
          ? _value.liked_by_user
          : liked_by_user // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value));
    });
  }

  @override
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      double? width,
      double? height,
      String? color,
      String? blur_hash,
      String? description,
      String? alt_description,
      Urls urls,
      Links links,
      int? likes,
      bool? liked_by_user,
      User user});

  @override
  $UrlsCopyWith<$Res> get urls;
  @override
  $LinksCopyWith<$Res> get links;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, (v) => _then(v as _$_Post));

  @override
  _$_Post get _value => super._value as _$_Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blur_hash = freezed,
    Object? description = freezed,
    Object? alt_description = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? likes = freezed,
    Object? liked_by_user = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blur_hash: blur_hash == freezed
          ? _value.blur_hash
          : blur_hash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      alt_description: alt_description == freezed
          ? _value.alt_description
          : alt_description // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_by_user: liked_by_user == freezed
          ? _value.liked_by_user
          : liked_by_user // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {required this.id,
      required this.width,
      required this.height,
      required this.color,
      required this.blur_hash,
      required this.description,
      required this.alt_description,
      required this.urls,
      required this.links,
      required this.likes,
      required this.liked_by_user,
      required this.user});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String? id;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final String? color;
  @override
  final String? blur_hash;
  @override
  final String? description;
  @override
  final String? alt_description;
  @override
  final Urls urls;
  @override
  final Links links;
  @override
  final int? likes;
  @override
  final bool? liked_by_user;
  @override
  final User user;

  @override
  String toString() {
    return 'Post(id: $id, width: $width, height: $height, color: $color, blur_hash: $blur_hash, description: $description, alt_description: $alt_description, urls: $urls, links: $links, likes: $likes, liked_by_user: $liked_by_user, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.blur_hash, blur_hash) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.alt_description, alt_description) &&
            const DeepCollectionEquality().equals(other.urls, urls) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality()
                .equals(other.liked_by_user, liked_by_user) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(blur_hash),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(alt_description),
      const DeepCollectionEquality().hash(urls),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(liked_by_user),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required final String? id,
      required final double? width,
      required final double? height,
      required final String? color,
      required final String? blur_hash,
      required final String? description,
      required final String? alt_description,
      required final Urls urls,
      required final Links links,
      required final int? likes,
      required final bool? liked_by_user,
      required final User user}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String? get id;
  @override
  double? get width;
  @override
  double? get height;
  @override
  String? get color;
  @override
  String? get blur_hash;
  @override
  String? get description;
  @override
  String? get alt_description;
  @override
  Urls get urls;
  @override
  Links get links;
  @override
  int? get likes;
  @override
  bool? get liked_by_user;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return _Urls.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String? get full => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res>;
  $Res call({String? full, String? small});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res> implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  final Urls _value;
  // ignore: unused_field
  final $Res Function(Urls) _then;

  @override
  $Res call({
    Object? full = freezed,
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UrlsCopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$_UrlsCopyWith(_$_Urls value, $Res Function(_$_Urls) then) =
      __$$_UrlsCopyWithImpl<$Res>;
  @override
  $Res call({String? full, String? small});
}

/// @nodoc
class __$$_UrlsCopyWithImpl<$Res> extends _$UrlsCopyWithImpl<$Res>
    implements _$$_UrlsCopyWith<$Res> {
  __$$_UrlsCopyWithImpl(_$_Urls _value, $Res Function(_$_Urls) _then)
      : super(_value, (v) => _then(v as _$_Urls));

  @override
  _$_Urls get _value => super._value as _$_Urls;

  @override
  $Res call({
    Object? full = freezed,
    Object? small = freezed,
  }) {
    return _then(_$_Urls(
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Urls implements _Urls {
  _$_Urls({required this.full, required this.small});

  factory _$_Urls.fromJson(Map<String, dynamic> json) => _$$_UrlsFromJson(json);

  @override
  final String? full;
  @override
  final String? small;

  @override
  String toString() {
    return 'Urls(full: $full, small: $small)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Urls &&
            const DeepCollectionEquality().equals(other.full, full) &&
            const DeepCollectionEquality().equals(other.small, small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(full),
      const DeepCollectionEquality().hash(small));

  @JsonKey(ignore: true)
  @override
  _$$_UrlsCopyWith<_$_Urls> get copyWith =>
      __$$_UrlsCopyWithImpl<_$_Urls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlsToJson(
      this,
    );
  }
}

abstract class _Urls implements Urls {
  factory _Urls({required final String? full, required final String? small}) =
      _$_Urls;

  factory _Urls.fromJson(Map<String, dynamic> json) = _$_Urls.fromJson;

  @override
  String? get full;
  @override
  String? get small;
  @override
  @JsonKey(ignore: true)
  _$$_UrlsCopyWith<_$_Urls> get copyWith => throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String? get download => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res>;
  $Res call({String? download});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  final Links _value;
  // ignore: unused_field
  final $Res Function(Links) _then;

  @override
  $Res call({
    Object? download = freezed,
  }) {
    return _then(_value.copyWith(
      download: download == freezed
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$_LinksCopyWith(_$_Links value, $Res Function(_$_Links) then) =
      __$$_LinksCopyWithImpl<$Res>;
  @override
  $Res call({String? download});
}

/// @nodoc
class __$$_LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res>
    implements _$$_LinksCopyWith<$Res> {
  __$$_LinksCopyWithImpl(_$_Links _value, $Res Function(_$_Links) _then)
      : super(_value, (v) => _then(v as _$_Links));

  @override
  _$_Links get _value => super._value as _$_Links;

  @override
  $Res call({
    Object? download = freezed,
  }) {
    return _then(_$_Links(
      download: download == freezed
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Links implements _Links {
  _$_Links({required this.download});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$$_LinksFromJson(json);

  @override
  final String? download;

  @override
  String toString() {
    return 'Links(download: $download)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Links &&
            const DeepCollectionEquality().equals(other.download, download));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(download));

  @JsonKey(ignore: true)
  @override
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      __$$_LinksCopyWithImpl<_$_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  factory _Links({required final String? download}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  String? get download;
  @override
  @JsonKey(ignore: true)
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  UserProfileImage get profile_image => throw _privateConstructorUsedError;
  int? get total_photos => throw _privateConstructorUsedError;
  int? get total_likes => throw _privateConstructorUsedError;
  UserSocialMediaProfiles get social => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? username,
      String? name,
      String? first_name,
      String? last_name,
      UserProfileImage profile_image,
      int? total_photos,
      int? total_likes,
      UserSocialMediaProfiles social});

  $UserProfileImageCopyWith<$Res> get profile_image;
  $UserSocialMediaProfilesCopyWith<$Res> get social;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? profile_image = freezed,
    Object? total_photos = freezed,
    Object? total_likes = freezed,
    Object? social = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: profile_image == freezed
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as UserProfileImage,
      total_photos: total_photos == freezed
          ? _value.total_photos
          : total_photos // ignore: cast_nullable_to_non_nullable
              as int?,
      total_likes: total_likes == freezed
          ? _value.total_likes
          : total_likes // ignore: cast_nullable_to_non_nullable
              as int?,
      social: social == freezed
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as UserSocialMediaProfiles,
    ));
  }

  @override
  $UserProfileImageCopyWith<$Res> get profile_image {
    return $UserProfileImageCopyWith<$Res>(_value.profile_image, (value) {
      return _then(_value.copyWith(profile_image: value));
    });
  }

  @override
  $UserSocialMediaProfilesCopyWith<$Res> get social {
    return $UserSocialMediaProfilesCopyWith<$Res>(_value.social, (value) {
      return _then(_value.copyWith(social: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? username,
      String? name,
      String? first_name,
      String? last_name,
      UserProfileImage profile_image,
      int? total_photos,
      int? total_likes,
      UserSocialMediaProfiles social});

  @override
  $UserProfileImageCopyWith<$Res> get profile_image;
  @override
  $UserSocialMediaProfilesCopyWith<$Res> get social;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? profile_image = freezed,
    Object? total_photos = freezed,
    Object? total_likes = freezed,
    Object? social = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: profile_image == freezed
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as UserProfileImage,
      total_photos: total_photos == freezed
          ? _value.total_photos
          : total_photos // ignore: cast_nullable_to_non_nullable
              as int?,
      total_likes: total_likes == freezed
          ? _value.total_likes
          : total_likes // ignore: cast_nullable_to_non_nullable
              as int?,
      social: social == freezed
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as UserSocialMediaProfiles,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.id,
      required this.username,
      required this.name,
      required this.first_name,
      required this.last_name,
      required this.profile_image,
      required this.total_photos,
      required this.total_likes,
      required this.social});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final UserProfileImage profile_image;
  @override
  final int? total_photos;
  @override
  final int? total_likes;
  @override
  final UserSocialMediaProfiles social;

  @override
  String toString() {
    return 'User(id: $id, username: $username, name: $name, first_name: $first_name, last_name: $last_name, profile_image: $profile_image, total_photos: $total_photos, total_likes: $total_likes, social: $social)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            const DeepCollectionEquality()
                .equals(other.profile_image, profile_image) &&
            const DeepCollectionEquality()
                .equals(other.total_photos, total_photos) &&
            const DeepCollectionEquality()
                .equals(other.total_likes, total_likes) &&
            const DeepCollectionEquality().equals(other.social, social));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name),
      const DeepCollectionEquality().hash(profile_image),
      const DeepCollectionEquality().hash(total_photos),
      const DeepCollectionEquality().hash(total_likes),
      const DeepCollectionEquality().hash(social));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String? id,
      required final String? username,
      required final String? name,
      required final String? first_name,
      required final String? last_name,
      required final UserProfileImage profile_image,
      required final int? total_photos,
      required final int? total_likes,
      required final UserSocialMediaProfiles social}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id;
  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  UserProfileImage get profile_image;
  @override
  int? get total_photos;
  @override
  int? get total_likes;
  @override
  UserSocialMediaProfiles get social;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserProfileImage _$UserProfileImageFromJson(Map<String, dynamic> json) {
  return _UserProfileImage.fromJson(json);
}

/// @nodoc
mixin _$UserProfileImage {
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileImageCopyWith<UserProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileImageCopyWith<$Res> {
  factory $UserProfileImageCopyWith(
          UserProfileImage value, $Res Function(UserProfileImage) then) =
      _$UserProfileImageCopyWithImpl<$Res>;
  $Res call({String? small, String? medium, String? large});
}

/// @nodoc
class _$UserProfileImageCopyWithImpl<$Res>
    implements $UserProfileImageCopyWith<$Res> {
  _$UserProfileImageCopyWithImpl(this._value, this._then);

  final UserProfileImage _value;
  // ignore: unused_field
  final $Res Function(UserProfileImage) _then;

  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProfileImageCopyWith<$Res>
    implements $UserProfileImageCopyWith<$Res> {
  factory _$$_UserProfileImageCopyWith(
          _$_UserProfileImage value, $Res Function(_$_UserProfileImage) then) =
      __$$_UserProfileImageCopyWithImpl<$Res>;
  @override
  $Res call({String? small, String? medium, String? large});
}

/// @nodoc
class __$$_UserProfileImageCopyWithImpl<$Res>
    extends _$UserProfileImageCopyWithImpl<$Res>
    implements _$$_UserProfileImageCopyWith<$Res> {
  __$$_UserProfileImageCopyWithImpl(
      _$_UserProfileImage _value, $Res Function(_$_UserProfileImage) _then)
      : super(_value, (v) => _then(v as _$_UserProfileImage));

  @override
  _$_UserProfileImage get _value => super._value as _$_UserProfileImage;

  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_$_UserProfileImage(
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileImage implements _UserProfileImage {
  _$_UserProfileImage(
      {required this.small, required this.medium, required this.large});

  factory _$_UserProfileImage.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileImageFromJson(json);

  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;

  @override
  String toString() {
    return 'UserProfileImage(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileImage &&
            const DeepCollectionEquality().equals(other.small, small) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.large, large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(small),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(large));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileImageCopyWith<_$_UserProfileImage> get copyWith =>
      __$$_UserProfileImageCopyWithImpl<_$_UserProfileImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileImageToJson(
      this,
    );
  }
}

abstract class _UserProfileImage implements UserProfileImage {
  factory _UserProfileImage(
      {required final String? small,
      required final String? medium,
      required final String? large}) = _$_UserProfileImage;

  factory _UserProfileImage.fromJson(Map<String, dynamic> json) =
      _$_UserProfileImage.fromJson;

  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileImageCopyWith<_$_UserProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSocialMediaProfiles _$UserSocialMediaProfilesFromJson(
    Map<String, dynamic> json) {
  return _UserSocialMediaProfiles.fromJson(json);
}

/// @nodoc
mixin _$UserSocialMediaProfiles {
  String? get instagram_username => throw _privateConstructorUsedError;
  String? get portfolio_url => throw _privateConstructorUsedError;
  String? get twitter_username => throw _privateConstructorUsedError;
  String? get paypal_email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSocialMediaProfilesCopyWith<UserSocialMediaProfiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSocialMediaProfilesCopyWith<$Res> {
  factory $UserSocialMediaProfilesCopyWith(UserSocialMediaProfiles value,
          $Res Function(UserSocialMediaProfiles) then) =
      _$UserSocialMediaProfilesCopyWithImpl<$Res>;
  $Res call(
      {String? instagram_username,
      String? portfolio_url,
      String? twitter_username,
      String? paypal_email});
}

/// @nodoc
class _$UserSocialMediaProfilesCopyWithImpl<$Res>
    implements $UserSocialMediaProfilesCopyWith<$Res> {
  _$UserSocialMediaProfilesCopyWithImpl(this._value, this._then);

  final UserSocialMediaProfiles _value;
  // ignore: unused_field
  final $Res Function(UserSocialMediaProfiles) _then;

  @override
  $Res call({
    Object? instagram_username = freezed,
    Object? portfolio_url = freezed,
    Object? twitter_username = freezed,
    Object? paypal_email = freezed,
  }) {
    return _then(_value.copyWith(
      instagram_username: instagram_username == freezed
          ? _value.instagram_username
          : instagram_username // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio_url: portfolio_url == freezed
          ? _value.portfolio_url
          : portfolio_url // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter_username: twitter_username == freezed
          ? _value.twitter_username
          : twitter_username // ignore: cast_nullable_to_non_nullable
              as String?,
      paypal_email: paypal_email == freezed
          ? _value.paypal_email
          : paypal_email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserSocialMediaProfilesCopyWith<$Res>
    implements $UserSocialMediaProfilesCopyWith<$Res> {
  factory _$$_UserSocialMediaProfilesCopyWith(_$_UserSocialMediaProfiles value,
          $Res Function(_$_UserSocialMediaProfiles) then) =
      __$$_UserSocialMediaProfilesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? instagram_username,
      String? portfolio_url,
      String? twitter_username,
      String? paypal_email});
}

/// @nodoc
class __$$_UserSocialMediaProfilesCopyWithImpl<$Res>
    extends _$UserSocialMediaProfilesCopyWithImpl<$Res>
    implements _$$_UserSocialMediaProfilesCopyWith<$Res> {
  __$$_UserSocialMediaProfilesCopyWithImpl(_$_UserSocialMediaProfiles _value,
      $Res Function(_$_UserSocialMediaProfiles) _then)
      : super(_value, (v) => _then(v as _$_UserSocialMediaProfiles));

  @override
  _$_UserSocialMediaProfiles get _value =>
      super._value as _$_UserSocialMediaProfiles;

  @override
  $Res call({
    Object? instagram_username = freezed,
    Object? portfolio_url = freezed,
    Object? twitter_username = freezed,
    Object? paypal_email = freezed,
  }) {
    return _then(_$_UserSocialMediaProfiles(
      instagram_username: instagram_username == freezed
          ? _value.instagram_username
          : instagram_username // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio_url: portfolio_url == freezed
          ? _value.portfolio_url
          : portfolio_url // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter_username: twitter_username == freezed
          ? _value.twitter_username
          : twitter_username // ignore: cast_nullable_to_non_nullable
              as String?,
      paypal_email: paypal_email == freezed
          ? _value.paypal_email
          : paypal_email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSocialMediaProfiles implements _UserSocialMediaProfiles {
  _$_UserSocialMediaProfiles(
      {required this.instagram_username,
      required this.portfolio_url,
      required this.twitter_username,
      required this.paypal_email});

  factory _$_UserSocialMediaProfiles.fromJson(Map<String, dynamic> json) =>
      _$$_UserSocialMediaProfilesFromJson(json);

  @override
  final String? instagram_username;
  @override
  final String? portfolio_url;
  @override
  final String? twitter_username;
  @override
  final String? paypal_email;

  @override
  String toString() {
    return 'UserSocialMediaProfiles(instagram_username: $instagram_username, portfolio_url: $portfolio_url, twitter_username: $twitter_username, paypal_email: $paypal_email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSocialMediaProfiles &&
            const DeepCollectionEquality()
                .equals(other.instagram_username, instagram_username) &&
            const DeepCollectionEquality()
                .equals(other.portfolio_url, portfolio_url) &&
            const DeepCollectionEquality()
                .equals(other.twitter_username, twitter_username) &&
            const DeepCollectionEquality()
                .equals(other.paypal_email, paypal_email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(instagram_username),
      const DeepCollectionEquality().hash(portfolio_url),
      const DeepCollectionEquality().hash(twitter_username),
      const DeepCollectionEquality().hash(paypal_email));

  @JsonKey(ignore: true)
  @override
  _$$_UserSocialMediaProfilesCopyWith<_$_UserSocialMediaProfiles>
      get copyWith =>
          __$$_UserSocialMediaProfilesCopyWithImpl<_$_UserSocialMediaProfiles>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSocialMediaProfilesToJson(
      this,
    );
  }
}

abstract class _UserSocialMediaProfiles implements UserSocialMediaProfiles {
  factory _UserSocialMediaProfiles(
      {required final String? instagram_username,
      required final String? portfolio_url,
      required final String? twitter_username,
      required final String? paypal_email}) = _$_UserSocialMediaProfiles;

  factory _UserSocialMediaProfiles.fromJson(Map<String, dynamic> json) =
      _$_UserSocialMediaProfiles.fromJson;

  @override
  String? get instagram_username;
  @override
  String? get portfolio_url;
  @override
  String? get twitter_username;
  @override
  String? get paypal_email;
  @override
  @JsonKey(ignore: true)
  _$$_UserSocialMediaProfilesCopyWith<_$_UserSocialMediaProfiles>
      get copyWith => throw _privateConstructorUsedError;
}
