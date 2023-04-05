class Product {
  final int id;
  final String title;
  final String url;
  final String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnail: json['thumbnailUrl'],
    );
  }

  static List<Product> formList(List<dynamic> list) {
    return List<Product>.from(
      list.map((element) => Product.fromJson(element)),
    );
  }
}
