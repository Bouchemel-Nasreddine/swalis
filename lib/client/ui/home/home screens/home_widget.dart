import 'package:flutter/material.dart';
import 'package:swalis/client/controllers/product_controller.dart';

import '../../../controllers/cart_controller.dart';
import '../../../data classes/product.dart';
import '../../product/product_detail.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

var description =
    "Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.";

var categories = [
  'Tous',
  'Nouveautés',
  'Phares',
  'Cappillaire',
  'Hygiene',
  'Soin'
];
var tapedCategory = 0;

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white10,
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.02,
              right: size.width * 0.02,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      bottom: size.height * 0.01,
                    ),
                    child: SizedBox(
                      height: size.height * 0.07,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: size.width * 0.3,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  tapedCategory = index;
                                });
                              },
                              child: Card(
                                color: index == tapedCategory
                                    ? const Color(0xffec0676)
                                    : Colors.white,
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      categories.elementAt(index),
                                      style: TextStyle(
                                        color: index == tapedCategory
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Scrollbar(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return (productList.elementAt(index).Category ==
                                    categories.elementAt(tapedCategory) ||
                                categories.elementAt(tapedCategory) == 'Tous')
                            ? GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => ProductDetail())),
                                child: Container(
                                  height: size.height * 0.2,
                                  child: Card(
                                    elevation: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              child: Image.asset(
                                                productList
                                                    .elementAt(index)
                                                    .image,
                                              ),
                                              backgroundColor:
                                                  const Color(0x00ffffff),
                                              radius: 25,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    productList
                                                        .elementAt(index)
                                                        .name,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Color(0xff192841),
                                                    ),
                                                  ),
                                                  Text(
                                                    productList
                                                        .elementAt(index)
                                                        .price
                                                        .toString(),
                                                    style: const TextStyle(
                                                      color: Color(0xfffeaf29),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                cartList.add(
                                                  productList.elementAt(index),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.add_circle_outline,
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
                                            description,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Container();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
