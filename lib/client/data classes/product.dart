import 'package:flutter/cupertino.dart';

class Product {
  double _id;
  String _name;
  String _description;
  String _image;
  double _price;
  String Category;

  Product(this._id, this._name, this._price, this._description, this._image, this.Category);

  double get id => this._id;

  set id(double value) => this._id = value;

  get name => this._name;

  set name(value) => this._name = value;

  get description => this._description;

  set description(value) => this._description = value;

  get image => this._image;

  set image(value) => this._image = value;

  get price => this._price;

  set price(value) => this._price = value;
  
 String get getCategory => this.Category;

 set setCategory(String Category) => this.Category = Category;

}
