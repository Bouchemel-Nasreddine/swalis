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
    return Center(
      child: SizedBox(
        width: size.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ordres',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                ),
                itemCount: orderList.length,
                itemBuilder: (BuildContext context, int index) {
                  var totalPrice = orderList.elementAt(index).quantity * orderList.elementAt(index).product.price;
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CmdDetail())),
                    child: Container(
                      height: size.height * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [                 
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(orderList.elementAt(index).date.toString().substring(0, 10),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black,
                                        )),
                                    Text(
                                      totalPrice.toString() + ' DA',
                                      style: const TextStyle(
                                        color: Color(0xfffeaf29),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      orderList.elementAt(index).quantity.toString(),
                                      style: const TextStyle(
                                        color: Color(0xfffeaf29),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),Text(
                                      orderList.elementAt(index).product.name,
                                      style: const TextStyle(
                                        color: Color(0xfffeaf29),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
