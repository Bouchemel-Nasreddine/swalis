import 'package:flutter/material.dart';
import 'package:swalis/controllers/cart_controller.dart';
import 'package:swalis/data%20classes/product.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.03),
          child: const Text(
            'Cart',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
            ),
            itemCount: cartList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: size.height * 0.2,
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
                                    color: Colors.black,
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
                          onPressed: () => cartList.removeAt(index),
                          icon: Icon(Icons.delete, color:Theme.of(context).primaryColor ),
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
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
