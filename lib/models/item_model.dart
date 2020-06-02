// To parse this JSON data, do
//
//     final productoModel = productoModelFromJson(jsonString);

import 'dart:convert';

ItemModel itemModelFromJson(String str) => ItemModel.fromJson(json.decode(str));

String productoModelToJson(ItemModel data) => json.encode(data.toJson());

class ItemModel {

    String id;
    String text;
    String type;
    String upvotes;
    String userUpvoted;
    

    ItemModel({
        this.id,
        this.text = '',
        this.type = '',
        this.upvotes = '',
        this.userUpvoted = '',
       
    });

    factory ItemModel.fromJson(Map<String, dynamic> json) => new ItemModel(
        id         : json["_id"],
        text     : json["text"],
        type      : json["type"],
        upvotes : json["upvotes"],
        userUpvoted    : json["userUpvoted"],
    );

    Map<String, dynamic> toJson() => {
        // "id"         : id,
        "titulo"     : text,
        "tipo" : type,
        "valor"      : upvotes,
        "disponible" : userUpvoted,
    };
}


