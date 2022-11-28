import 'dart:core';

import 'package:flutter/foundation.dart';

class Product {
  String _id;

  String get id => _id;

  set id(String id) {
    _id = id;
  }

  String _name;

  String get name => _name;

  set name(String name) {
    _name = name;
  }

  String _image;

  String get image => _image;

  set image(String image) {
    _image = image;
  }

  String _price;

  String get price => _price;

  set price(String price) {
    _price = price;
  }

  String _description;

  String get description => _description;

  set description(String description) {
    _description = description;
  }

  Product(this._id, this._name, this._image, this._price, this._description);
}
