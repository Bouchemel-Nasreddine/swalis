import 'package:flutter/cupertino.dart';

import '../data classes/product.dart';
import '../data classes/orders.dart';


List orderList = List<Order>.filled(
  1,
  Order(
    0,
    Product(
      0,
      'Gel Douche Plaisir',
      240.00,
      'Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.',
      Image.asset("assets/gel_douche.png"),
    ),
    5,
    DateTime.utc(2022, 7, 19),
  ),
  growable: true,
);
