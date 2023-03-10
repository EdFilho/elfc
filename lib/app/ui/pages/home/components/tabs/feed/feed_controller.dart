import 'package:faker/faker.dart';
import 'package:get/get.dart';

import '../../../../../../core/data/models/models.dart';

class FeedController extends GetxController {
  List<Post> initialPosts = PostGenerator(faker).generatePosts(10);
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
