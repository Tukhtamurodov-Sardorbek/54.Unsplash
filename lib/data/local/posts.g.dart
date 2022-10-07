// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsAdapter extends TypeAdapter<LocalPost> {
  @override
  final int typeId = 1;

  @override
  LocalPost read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalPost(
      postId: fields[0] as String?,
      postWidth: fields[1] as double?,
      postHeight: fields[2] as double?,
      postColor: fields[3] as String?,
      postBlurHash: fields[4] as String?,
      postDescription: fields[5] as String?,
      postAltDescription: fields[6] as String?,
      postFullURL: fields[7] as String?,
      postSmallURL: fields[8] as String?,
      postDownloadLink: fields[9] as String?,
      userID: fields[10] as String?,
      userName: fields[11] as String?,
      name: fields[12] as String?,
      firstName: fields[13] as String?,
      lastName: fields[14] as String?,
      smallProfileImage: fields[15] as String?,
      totalPhotos: fields[16] as int?,
      totalLikes: fields[17] as int?,
      instagramUsername: fields[18] as String?,
      twitterUsername: fields[19] as String?,
      paypalEmail: fields[20] as String?,
      portfolio_url: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocalPost obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.postId)
      ..writeByte(1)
      ..write(obj.postWidth)
      ..writeByte(2)
      ..write(obj.postHeight)
      ..writeByte(3)
      ..write(obj.postColor)
      ..writeByte(4)
      ..write(obj.postBlurHash)
      ..writeByte(5)
      ..write(obj.postDescription)
      ..writeByte(6)
      ..write(obj.postAltDescription)
      ..writeByte(7)
      ..write(obj.postFullURL)
      ..writeByte(8)
      ..write(obj.postSmallURL)
      ..writeByte(9)
      ..write(obj.postDownloadLink)
      ..writeByte(10)
      ..write(obj.userID)
      ..writeByte(11)
      ..write(obj.userName)
      ..writeByte(12)
      ..write(obj.name)
      ..writeByte(13)
      ..write(obj.firstName)
      ..writeByte(14)
      ..write(obj.lastName)
      ..writeByte(15)
      ..write(obj.smallProfileImage)
      ..writeByte(16)
      ..write(obj.totalPhotos)
      ..writeByte(17)
      ..write(obj.totalLikes)
      ..writeByte(18)
      ..write(obj.instagramUsername)
      ..writeByte(19)
      ..write(obj.twitterUsername)
      ..writeByte(20)
      ..write(obj.paypalEmail)
      ..writeByte(21)
      ..write(obj.portfolio_url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
