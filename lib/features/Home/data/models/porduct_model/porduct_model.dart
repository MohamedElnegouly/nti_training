import 'package:training_app/features/Home/domin/entities/product_entity.dart';

class PorductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  PorductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  factory PorductModel.fromJson(Map<String, dynamic> json) => PorductModel(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] ?? '',
        category: json['category'] ?? '',
        image: json['image'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
      };

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
        description:description,
        category: category,
        image: image,
    );
  }
}
