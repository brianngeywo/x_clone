class TwitterPost {
  final String id;
  final String text;
  final String createdAt;
  final String username;
  final String userImage;
  final String userHandle;
  final String postText;
  final List<String> postImages;
  final int commentsCount;
  final int retweetsCount;
  final int likesCount;
  final int statsCount;

  TwitterPost({
    required this.id,
    required this.text,
    required this.createdAt,
    required this.username,
    required this.userImage,
    required this.userHandle,
    required this.postText,
    required this.postImages,
    required this.commentsCount,
    required this.retweetsCount,
    required this.likesCount,
    required this.statsCount,
  });

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'createdAt': createdAt,
      'username': username,
      'userImage': userImage,
      'userHandle': userHandle,
      'postText': postText,
      'postImages': postImages,
      'commentsCount': commentsCount,
      'retweetsCount': retweetsCount,
      'likesCount': likesCount,
      'statsCount': statsCount,
    };
  }

  //from Json
  factory TwitterPost.fromJson(Map<String, dynamic> json) {
    return TwitterPost(
      id: json['id'],
      text: json['text'],
      createdAt: json['createdAt'],
      username: json['username'],
      userImage: json['userImage'],
      userHandle: json['userHandle'],
      postText: json['postText'],
      postImages: List<String>.from(json['postImages']),
      commentsCount: json['commentsCount'],
      retweetsCount: json['retweetsCount'],
      likesCount: json['likesCount'],
      statsCount: json['statsCount'],
    );
  }
}
