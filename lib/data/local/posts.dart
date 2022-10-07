import 'package:hive/hive.dart';

part 'posts.g.dart';

@HiveType(typeId: 1, adapterName: 'HiveAdapter')
class LocalPost extends HiveObject {
  @HiveField(0)
  final String? postId;
  @HiveField(1)
  final double? postWidth;
  @HiveField(2)
  final double? postHeight;
  @HiveField(3)
  final String? postColor;
  @HiveField(4)
  final String? postBlurHash;
  @HiveField(5)
  final String? postDescription;
  @HiveField(6)
  final String? postAltDescription;
  @HiveField(7)
  final String? postFullURL;
  @HiveField(8)
  final String? postSmallURL;
  @HiveField(9)
  final String? postDownloadLink;
  @HiveField(10)
  final String? userID;
  @HiveField(11)
  final String? userName;
  @HiveField(12)
  final String? name;
  @HiveField(13)
  final String? firstName;
  @HiveField(14)
  final String? lastName;
  @HiveField(15)
  final String? smallProfileImage;
  @HiveField(16)
  final int? totalPhotos;
  @HiveField(17)
  final int? totalLikes;
  @HiveField(18)
  final String? instagramUsername;
  @HiveField(19)
  final String? twitterUsername;
  @HiveField(20)
  final String? paypalEmail;
  @HiveField(21)
  final String? portfolio_url;

  LocalPost({
    this.postId,
    this.postWidth,
    this.postHeight,
    this.postColor,
    this.postBlurHash,
    this.postDescription,
    this.postAltDescription,
    this.postFullURL,
    this.postSmallURL,
    this.postDownloadLink,
    this.userID,
    this.userName,
    this.name,
    this.firstName,
    this.lastName,
    this.smallProfileImage,
    this.totalPhotos,
    this.totalLikes,
    this.instagramUsername,
    this.twitterUsername,
    this.paypalEmail,
    this.portfolio_url
  });
}
