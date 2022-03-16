
import 'package:swalis/client/data%20classes/product.dart';

class Order {
  double _id;
  List<Product> _product;
  int quantity;
  DateTime _date;
  
  Order(this._id, this._product, this.quantity, this._date);

 DateTime get date => this._date;

 set date(DateTime value) => this._date = value;


  List<Product> get product => this._product;

  set product(List<Product> value) => this._product = value;

  get getQuantity => this.quantity;

  set setQuantity(quantity) => this.quantity = quantity;
}
