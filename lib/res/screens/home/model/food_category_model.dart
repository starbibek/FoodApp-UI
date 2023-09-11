
import 'dart:convert';

List<FoodCategory> foodCategoryFromJson(String str) => List<FoodCategory>.from(json.decode(str).map((x) => FoodCategory.fromJson(x)));

String foodCategoryToJson(List<FoodCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodCategory {
    FoodCategory({
        this.id,
        this.name,
        this.description,
        this.image,
        this.subCategory,
    });

    int? id;
    String? name;
    String? description;
    String? image;
    List<SubCategory>? subCategory;

    factory FoodCategory.fromJson(Map<String, dynamic> json) => FoodCategory(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        subCategory: json["sub_category"] == null ? [] : List<SubCategory>.from(json["sub_category"]!.map((x) => SubCategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "sub_category": subCategory == null ? [] : List<dynamic>.from(subCategory!.map((x) => x.toJson())),
    };
}

class SubCategory {
    SubCategory({
        this.id,
        this.name,
        this.price,
    });

    int? id;
    String? name;
    Price? price;

    factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        name: json["name"],
        price: json["price"] == null ? null : Price.fromJson(json["price"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price?.toJson(),
    };
}

class Price {
    Price({
        this.fullPlate,
        this.halfPlate,
    });

    int? fullPlate;
    int? halfPlate;

    factory Price.fromJson(Map<String, dynamic> json) => Price(
        fullPlate: json["full_plate"],
        halfPlate: json["half_plate"],
    );

    Map<String, dynamic> toJson() => {
        "full_plate": fullPlate,
        "half_plate": halfPlate,
    };
}
