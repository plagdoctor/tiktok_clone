class VideoModel {
  final String title;
  final String description;
  final String fileUrl;
  final String thumbnailUrl;
  final String creatorUid;
  final String creator;
  final int likes;
  final int comments;
  final int createdAt;

  VideoModel(
      {required this.creator,
      required this.description,
      required this.fileUrl,
      required this.thumbnailUrl,
      required this.creatorUid,
      required this.likes,
      required this.comments,
      required this.createdAt,
      required this.title});

  VideoModel.fromJson(Map<String, dynamic> json)
      : description = json["description"],
        fileUrl = json["fileUrl"],
        thumbnailUrl = json["thumbnailUrl"],
        creatorUid = json["creatorUid"],
        creator = json["creator"],
        likes = json["likes"],
        comments = json["comments"],
        createdAt = json["createdAt"],
        title = json["title"];

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "fileUrl": fileUrl,
      "thumbnailUrl": thumbnailUrl,
      "creatorUid": creatorUid,
      "creator": creator,
      "likes": likes,
      "comments": comments,
      "createdAt": createdAt,
      "title": title,
    };
  }
}
