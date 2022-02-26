import 'package:swalis/data%20classes/product.dart';

class Order {
  double _id;
  Product _product;
  double quantity;
  DateTime _date;
  
  Order(this._id, this._product, this.quantity, this._date);

 DateTime get date => this._date;

 set date(DateTime value) => this._date = value;


  Product get product => this._product;

  set product(Product value) => this._product = value;

  get getQuantity => this.quantity;

  set setQuantity(quantity) => this.quantity = quantity;
}
