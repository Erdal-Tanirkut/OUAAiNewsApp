class News {
  final String category;
  final String imageUrl;
  final String title;
  final String content;

  News({
    required this.category,
    required this.imageUrl,
    required this.title,
    required this.content,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      category: json['category'],
      imageUrl: json['imageUrl'],
      title: json['title'],
      content: json['content'],
    );
  }
}
