import 'package:hive/hive.dart';
import 'package:unsplash/data/local/posts.dart';
import 'package:unsplash/data/model/post.dart';

class LocalDatabase{
  LocalDatabase._();

  static Box<LocalPost>? _postsBox;
  static Box<int>? _paginationBox;
  static LocalDatabase instance = LocalDatabase._();

  static Future<LocalDatabase> getInstance() async{
    _postsBox ??= await Hive.openBox<LocalPost>('posts');
    _paginationBox ??= await Hive.openBox<int>('pagination');
    return instance;
  }

  static Map<dynamic, LocalPost> getPosts(){
    final posts = _postsBox?.toMap();
    return posts ?? {};
  }

  static Future<void> addPosts({required List<Post> posts}) async{
    final adaptedPostsID = getPosts().keys.toList();
    final adaptedPosts = getPosts().values.toList();
    int addedPostsNumber = 0;
    print('**** ADAPTED BEFORE: ${adaptedPosts.length} ****');
    for(var post in posts){
      bool isExist = adaptedPostsID.contains(post.id);
      if(!isExist){
        addedPostsNumber += 1;
        final p = LocalPost(
          postId: post.id,
          postWidth: post.width,
          postHeight: post.height,
          postColor: post.color,
          postBlurHash: post.blur_hash,
          postDescription: post.description,
          postAltDescription: post.alt_description,
          postFullURL: post.urls.full,
          postSmallURL: post.urls.small,
          postDownloadLink: post.links.download,
          userID: post.user.id,
          userName: post.user.username,
          name: post.user.name,
          firstName: post.user.first_name,
          lastName: post.user.last_name,
          smallProfileImage: post.user.profile_image.small,
          totalPhotos: post.user.total_photos,
          totalLikes: post.user.total_likes,
          instagramUsername: post.user.social.instagram_username,
          twitterUsername: post.user.social.twitter_username,
          paypalEmail: post.user.social.paypal_email,
          portfolio_url: post.user.social.portfolio_url,
        );
        adaptedPosts.add(p);
      }
    }
    print('**** ADAPTED AFTER: ${adaptedPosts.length} ****');
    print('**** NEW POSTS: ${posts.length} <=> ADDED: $addedPostsNumber ****');
    for(var post in adaptedPosts){
      await _postsBox?.put(post.postId, post);
    }
  }

  static Future<void> removePosts() async{
    await _postsBox?.clear();
  }

  static Future<void> setPage (int page) async {
    _paginationBox?.put('page', page);
  }

  static int getPage(){
    int page = _paginationBox?.get('page', defaultValue: 1) ?? 1;
    return page;
  }

  static Future<void> removePage() async {
    await _paginationBox?.clear();
  }
}