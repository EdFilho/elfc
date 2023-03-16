import 'comment.dart';

class Post {
  late String id;
  late String userId;
  late String userName;
  late String userProfileImage;
  late String image;
  late String description;
  late bool liked;
  late List<String>? likes;
  late List<Comment>? comments;
  late DateTime createdAt;
  late DateTime updatedAt;

  Post({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userProfileImage,
    required this.image,
    required this.description,
    this.liked = false,
    this.likes,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
  });

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    userName = json['userName'];
    userProfileImage = json['userProfileImage'];
    image = json['image'];
    description = json['description'];
    liked = json['liked'];
    if (json['likes'] != null) {
      likes = json['likes'].cast<String>();
    }
    if (json['comments'] != null) {
      comments = <Comment>[];
      json['comments'].forEach((item) {
        comments!.add(Comment.fromJson(item));
      });
    }
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['userName'] = userName;
    data['userProfileImage'] = userProfileImage;
    data['image'] = image;
    data['description'] = description;
    data['liked'] = liked;
    if (likes != null) {
      data['likes'] = likes;
    }
    if (comments != null) {
      data['comments'] = comments!.map((item) => item.toJson()).toList();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
