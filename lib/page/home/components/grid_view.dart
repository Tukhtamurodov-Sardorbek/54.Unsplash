import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:unsplash/data/model/photo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PostsView extends StatelessWidget {
  final List<Photo> posts;
  const PostsView({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 5,
      interactive: true,

      child: MasonryGridView.count(
        padding: const EdgeInsets.all(0),
        physics: const ClampingScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final Photo photo = posts[index];
          return Post(photo: photo);
        },
      ),
    );
  }
}

class Post extends StatelessWidget {
  final Photo photo;
  const Post({Key? key, required this.photo}) : super(key: key);

  Color getColorFromHex() {
    String hexColor = photo.color!;

    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "ff$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: getColorFromHex(), width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: photo.urls.full ?? '',
        imageBuilder: (BuildContext context, ImageProvider imageProvider) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image(image: imageProvider, fit: BoxFit.cover),
          );
        },
        // progressIndicatorBuilder: (context, url, downloadProgress) {
        //   return Shimmer.fromColors(
        //     baseColor: getColorFromHex().withOpacity(0.7),
        //     highlightColor: getColorFromHex().withOpacity(0.3),
        //     child: AspectRatio(
        //       aspectRatio: photo.width! / photo.height!,
        //       child: ColoredBox(color: getColorFromHex()),
        //     ),
        //   );
        // },
        placeholder: (context, url) => AspectRatio(
          aspectRatio: photo.width! / photo.height!,
          child: ColoredBox(color: getColorFromHex()),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}