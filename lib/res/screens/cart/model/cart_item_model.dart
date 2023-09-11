// To parse this JSON data, do
//
//     final cartItemModel = cartItemModelFromJson(jsonString);

import 'dart:convert';

List<CartItemModel> cartItemModelFromJson(String str) =>
    List<CartItemModel>.from(
        json.decode(str).map((x) => CartItemModel.fromJson(x)));

String cartItemModelToJson(List<CartItemModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartItemModel {
  CartItemModel({
    this.id,
    this.name,
    this.description,
    this.image,
    this.price,
    this.quantity,
    this.notes,
  });

  int? id;
  String? name;
  String? description;
  String? image;
  double? price;
  double? quantity;
  String? notes;

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
        quantity: json["quantity"],
        notes: json["notes"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "price": price,
        "quantity": quantity,
        "notes": notes,
      };
}
