class CyberSecurityArticle {
  final String title;
  final String description;
  final String url;

  CyberSecurityArticle({
    required this.title,
    required this.description,
    required this.url,
  });

  factory CyberSecurityArticle.fromJson(Map<String, dynamic> json) {
    return CyberSecurityArticle(
      title: json['title'],
      description: json['description'],
      url: json['url'],
    );
  }
}
