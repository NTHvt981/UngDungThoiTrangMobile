import 'package:cloud_firestore/cloud_firestore.dart';

const HAT = 'Nón';
const SHIRT = 'Áo';
const PANTS = 'Quần';
const SHOES = 'Giày';
const BACKPACK = 'Ba lô';

const ID = 'Ma';
const NAME = 'Ten';
const TYPE = 'Loai';
const IMAGE_URL = 'Hinh';
const DESCRIPTION = 'MoTa';
const NUMBER = 'SoLuong';
const PRICE = 'Gia';
const BRAND = 'Hang';
const COLOR = 'Mau';

class Item {
  String id;
  String name;
  String type;

  String imageUrl;
  String description;

  int number;
  int price;

  String brand;
  String color;

  Item();

  Map<String, dynamic> toMap() => {
    ID: id,
    NAME: name,
    TYPE: type,
    IMAGE_URL: imageUrl,
    DESCRIPTION: description,
    NUMBER: number,
    PRICE: price,
    BRAND: brand,
    COLOR: color,
  };

  Item.fromMap(Map<String, dynamic> map):
        assert(map[ID] != null),
        id = map[ID],
        name = map[NAME],
        type = map[TYPE],
        imageUrl = map[IMAGE_URL],
        description = map[DESCRIPTION],
        number = map[NUMBER],
        price = map[PRICE],
        brand = map[BRAND],
        color = map[COLOR];
}