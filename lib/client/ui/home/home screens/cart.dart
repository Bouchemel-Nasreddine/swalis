import 'package:flutter/material.dart';

import '../../../controllers/cart_controller.dart';
import '../../../data classes/product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
    cartList.add(
      Product(
        1,
        'Gel Douche Plaisir',
        240.00,
        'Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.',
        Image.asset("assets/gel_douche.png"),
      ),
    );
    cartList.add(
      Product(
        1,
        'Gel Douche Plaisir',
        240.00,
        'Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.',
        Image.asset("assets/gel_douche.png"),
      ),
    );
    cartList.add(
      Product(
        1,
        'Gel Douche Plaisir',
        240.00,
        'Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.',
        Image.asset("assets/gel_douche.png"),
      ),
    );
    cartList.add(
      Product(
        1,
        'Gel Douche Plaisir',
        240.00,
        'Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.',
        Image.asset("assets/gel_douche.png"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white10,
        child: Center(
          child: SizedBox(
            width: size.width * 0.95,
            child: ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: size.height * 0.2,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: cartList.elementAt(index).image,
                              backgroundColor: const Color(0x00ffffff),
                              radius: 25,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(cartList.elementAt(index).name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff192841),
                                      )),
                                  Text(
                                    cartList.elementAt(index).price.toString() +
                                        ' DA',
                                    style: const TextStyle(
                                      color: Color(0xfffeaf29),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () => setState(() {
                                cartList.removeAt(index);
                              }),
                              icon: const Icon(
                                Icons.delete,
                                color: Color(0xfffeaf29),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.05,
                            right: size.width * 0.05,
                          ),
                          child: Text(
                            cartList.elementAt(index).description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
