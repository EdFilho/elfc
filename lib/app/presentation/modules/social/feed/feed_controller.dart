import 'package:get/get.dart';

import '../../../../domain/entities/social/post.dart';

class FeedController extends GetxController {
  List<Post> initialPosts = <Post>[];
  RxList<Post> posts = <Post>[].obs;

  @override
  Future<void> onInit() async {
    posts.value = initialPosts;
    super.onInit();
  }

  Future<void> like(int index) async {
    Post newPost = posts[index];
    newPost.liked = true;
    posts[index] = newPost;
  }
}
