import 'package:flutter/material.dart';
import 'package:swalis/controllers/order_controller.dart';
import '../../../data classes/orders.dart';
import '../../../data classes/product.dart';
import '../../cmd_detail/commande_detail.dart';

class Ordre extends StatefulWidget {
  const Ordre({Key? key}) : super(key: key);

  @override
  _OrdreState createState() => _OrdreState();
}

class _OrdreState extends State<Ordre> {
  @override
  void initState() {
    super.initState();
    orderList.add(
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
    );
    orderList.add(
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
    );
    orderList.add(
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
    );
    orderList.add(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: SizedBox(
          width: size.width * 0.95,
          child: ListView.builder(
            itemCount: orderList.length,
            itemBuilder: (BuildContext context, int index) {
              var totalPrice = orderList.elementAt(index).quantity * orderList.elementAt(index).product.price;
              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CmdDetail())),
                child: Container(
                  height: size.height * 0.2,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(orderList.elementAt(index).date.toString().substring(0, 10),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff192841),
                              )),
                          Text(
                            'montant: ' + totalPrice.toString() + ' DA',
                            style: const TextStyle(
                              color: Color(0xfffeaf29),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                                                                    ),
                          ),
                          Text(
                            'Quantité: ' + orderList.elementAt(index).quantity.toString(),
                            style: const TextStyle(
                              color: Color(0xfffeaf29),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),Text(
                            'Produits: ' + orderList.elementAt(index).product.name,
                            style: const TextStyle(
                              color: Color(0xfffeaf29),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
