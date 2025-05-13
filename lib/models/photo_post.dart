class PhotoPost {
  final String userId;
  final String name;
  final String avatar;
  final String userDescription;
  final String photo;
  final String photoDescription;
  final int likeCount;
  final List<Comment> comments;
  bool isLiked;
  bool isBookmarked;

  PhotoPost({
    required this.userId,
    required this.name,
    required this.avatar,
    required this.userDescription,
    required this.photo,
    required this.photoDescription,
    this.likeCount = 0,
    this.comments = const [],
    this.isLiked = false,
    this.isBookmarked = false,
  });

  factory PhotoPost.fromJson(Map<String, dynamic> json) {
    List<Comment> commentsList = [];
    if (json['comments'] != null) {
      commentsList = List<Comment>.from(
        (json['comments'] as List).map((x) => Comment.fromJson(x)),
      );
    }

    return PhotoPost(
      userId: json['userId'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      userDescription: json['userDescription'] as String,
      photo: json['photo'] as String,
      photoDescription: json['photoDescription'] as String,
      likeCount: json['likeCount'] as int? ?? 0,
      comments: commentsList,
      isLiked: json['isLiked'] as bool? ?? false,
      isBookmarked: json['isBookmarked'] as bool? ?? false,
    );
  }
}

class Comment {
  final String userId;
  final String username;
  final String avatar;
  final String text;
  final DateTime createdAt;

  Comment({
    required this.userId,
    required this.username,
    required this.avatar,
    required this.text,
    required this.createdAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      userId: json['userId'] as String,
      username: json['username'] as String,
      avatar: json['avatar'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }
} 