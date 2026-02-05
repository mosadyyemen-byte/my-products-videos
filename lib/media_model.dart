// Core model for handling media assets
class MediaAsset {
  final String videoId;
  final String videoUrl;
  final String category;
  final DateTime uploadDate;

  MediaAsset({
    required this.videoId,
    required this.videoUrl,
    required this.category,
    required this.uploadDate,
  });

  factory MediaAsset.fromJson(Map<String, dynamic> json) {
    return MediaAsset(
      videoId: json['id'],
      videoUrl: json['url'],
      category: json['category'],
      uploadDate: DateTime.parse(json['timestamp']),
    );
  }
}
