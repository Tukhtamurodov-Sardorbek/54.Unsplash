import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter/material.dart';
import 'package:unsplash/data/model/photo.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:unsplash/page/home/components/extension.dart';

class PostsView extends StatelessWidget {
  final List<Photo> posts;
  const PostsView({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 5,
      interactive: true,

      child: MasonryGridView.count(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
        physics: const ClampingScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final Photo photo = posts[index];
          return Post(photo: photo, index: index);
        },
      ),
    );
  }
}

class Post extends StatelessWidget {
  final Photo photo;
  final int index;
  const Post({Key? key, required this.photo, required this.index}) : super(key: key);

  Color getColorFromHex() {
    String hexColor = photo.color!;

    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'ff$hexColor';
    }
    if (hexColor.length == 8) {
      return Color(int.parse('0x$hexColor'));
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = getColorFromHex();
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: backgroundColor, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: photo.urls.small ?? '',
              imageBuilder: (BuildContext context, ImageProvider imageProvider) {
                return ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                  child: Image(image: imageProvider, fit: BoxFit.cover),
                );
              },
              // progressIndicatorBuilder: (context, url, downloadProgress) {
              //   return Shimmer.fromColors(
              //     baseColor: backgroundColor.withOpacity(0.7),
              //     highlightColor: backgroundColor.withOpacity(0.3),
              //     child: AspectRatio(
              //       aspectRatio: photo.width! / photo.height!,
              //       child: ColoredBox(color: backgroundColor),
              //     ),
              //   );
              // },
              placeholder: (context, url) => AspectRatio(
                aspectRatio: photo.width! / photo.height!,
                child: ColoredBox(color: backgroundColor),
              ),
              errorWidget: (context, url, error) => const FailedToLoad(),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(6)),
            child: GlassmorphicContainer(
              height: 45,
              width: double.infinity,
              border: 0,
              borderRadius: 0,
              blur: 50,
              alignment: Alignment.bottomCenter,
              linearGradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  index.isOdd ? backgroundColor.withOpacity(0.3) : backgroundColor.withOpacity(0.6),
                  backgroundColor.withOpacity(0.4),
                  index.isOdd ? backgroundColor.withOpacity(0.6) : backgroundColor.withOpacity(0.3),
                ],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  index.isOdd ? backgroundColor.withOpacity(0.3) : backgroundColor.withOpacity(0.6),
                  backgroundColor.withOpacity(0.4),
                  index.isOdd ? backgroundColor.withOpacity(0.6) : backgroundColor.withOpacity(0.3),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: UserTile(photo: photo, color: backgroundColor),
              ),
            ),
          ),
        ],
      ),
    ).onTap(
        (){
          print('********** PRESSED **********');
          print('* ${photo.urls.full} *');
          print('* ${photo.links.download} *');
          print('* $photo *');
          print('******************************');
        }
    );
  }
}

class UserTile extends StatelessWidget {
  final Photo photo;
  final Color color;
  const UserTile({Key? key, required this.photo, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 34,
          width: 34,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: photo.user.profile_image.medium ?? '',
            imageBuilder: (BuildContext context, ImageProvider imageProvider) {
              return Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image(image: imageProvider, fit: BoxFit.cover),
              );
            },
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Shimmer.fromColors(
                    baseColor: color.withOpacity(0.7),
                    highlightColor: color.withOpacity(0.3),
                    child: AspectRatio(
                      aspectRatio: photo.width! / photo.height!,
                      child: ColoredBox(color: color),
                    ),
                  )
              );
            },
            errorWidget: (context, url, error) => const FailedToLoad(),
          ),
        ),
        const SizedBox(width: 6.0),
        Flexible(
          child: Text(
            photo.user.username ?? '',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // Expanded(
        //   child: Marquee(
        //     showFadingOnlyWhenScrolling: false,
        //     text: photo.user.username ?? '',
        //     style: const TextStyle(fontWeight: FontWeight.bold),
        //     blankSpace: 20.0,
        //     startPadding: 10.0,
        //     velocity: 30.0,
        //     startAfter: const Duration(seconds: 3),
        //   ),
        // )
      ],
    );
  }
}

class FailedToLoad extends StatelessWidget {
  const FailedToLoad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/animations/lottie_nodata.json',
        fit: BoxFit.cover,
      ),
    );
  }
}