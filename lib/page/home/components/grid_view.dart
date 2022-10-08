import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter/material.dart';
import 'package:unsplash/bloc/post/bloc.dart';
import 'package:unsplash/data/local/posts.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:unsplash/page/home/components/extension.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return LazyLoadScrollView(
              onEndOfPage: () {
                print('Load More');
                context.read<PostBloc>().add(LoadMoreEvent());
              },
              child: Scrollbar(
                thickness: 5,
                interactive: true,
                child: MasonryGridView.builder(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  physics: const ClampingScrollPhysics(),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    final LocalPost post = state.posts[index];
                    return PostWidget(post: post, index: index);
                  },
                ),
              ),
            );
          }),
      Positioned(
        top: 0,
        right: 14,
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                context.read<PostBloc>().add(ClearEvent());
              },
              icon: const Icon(Icons.delete),
              label: const Text('Delete All'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber.shade200,
                backgroundColor: Colors.black45,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                context.read<PostBloc>().add(LoadMoreEvent());
              },
              icon: const Icon(Icons.downloading),
              label: const Text('Load More'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber.shade200,
                backgroundColor: Colors.black45,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

class PostWidget extends StatelessWidget {
  final LocalPost post;
  final int index;
  const PostWidget({Key? key, required this.post, required this.index})
      : super(key: key);

  Color getColorFromHex() {
    String hexColor = post.postColor!;

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
              imageUrl: post.postSmallURL ?? '',
              imageBuilder:
                  (BuildContext context, ImageProvider imageProvider) {
                return ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(6)),
                  child: Image(image: imageProvider, fit: BoxFit.cover),
                );
              },
              // progressIndicatorBuilder: (context, url, downloadProgress) {
              //   return Shimmer.fromColors(
              //     baseColor: backgroundColor.withOpacity(0.7),
              //     highlightColor: backgroundColor.withOpacity(0.3),
              //     child: AspectRatio(
              //       aspectRatio: post.width! / post.height!,
              //       child: ColoredBox(color: backgroundColor),
              //     ),
              //   );
              // },
              placeholder: (context, url) => AspectRatio(
                aspectRatio: post.postWidth! / post.postHeight!,
                child: ColoredBox(color: backgroundColor),
              ),
              errorWidget: (context, url, error) => const FailedToLoad(),
            ),
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(6)),
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
                  index.isOdd
                      ? backgroundColor.withOpacity(0.3)
                      : backgroundColor.withOpacity(0.6),
                  backgroundColor.withOpacity(0.4),
                  index.isOdd
                      ? backgroundColor.withOpacity(0.6)
                      : backgroundColor.withOpacity(0.3),
                ],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  index.isOdd
                      ? backgroundColor.withOpacity(0.3)
                      : backgroundColor.withOpacity(0.6),
                  backgroundColor.withOpacity(0.4),
                  index.isOdd
                      ? backgroundColor.withOpacity(0.6)
                      : backgroundColor.withOpacity(0.3),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: UserTile(post: post, color: backgroundColor),
              ),
            ),
          ),
        ],
      ),
    ).onTap(() {
      print('********** PRESSED **********');
      print('* ${post.postFullURL} *');
      print('* ${post.postDownloadLink} *');
      print('* $post *');
      print('******************************');
    });
  }
}

class UserTile extends StatelessWidget {
  final LocalPost post;
  final Color color;
  const UserTile({Key? key, required this.post, required this.color})
      : super(key: key);

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
            imageUrl: post.smallProfileImage ?? '',
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
                    child: ColoredBox(color: color),
                  ));
            },
            errorWidget: (context, url, error) => const FailedToLoad(),
          ),
        ),
        const SizedBox(width: 6.0),
        Flexible(
          child: Text(
            post.userName ?? '',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // Expanded(
        //   child: Marquee(
        //     showFadingOnlyWhenScrolling: false,
        //     text: post.user.username ?? '',
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
