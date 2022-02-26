import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../product/product_detail.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({ Key? key }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}


  var description =
      "Sa formule enrichie à l’extrait de grenade et son parfum fruité aux accords pétillants et gourmands, vitalise vos sens pour le plaisir d’une douche détendue.";



class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.02, right: size.width * 0.02),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.03),
                    child: const Text(
                      'Family',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Card(
                            child: Image.asset(
                              "assets/capillaire.png",
                              width: size.width * 0.26,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Text('capillaire'),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Image.asset(
                              "assets/hygiene.png",
                              width: size.width * 0.26,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Text('hygiene'),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Image.asset(
                              "assets/soin.png",
                              width: size.width * 0.26,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Text('soin'),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                     padding: EdgeInsets.only(left: size.width * 0.04),
                    child: const Text(
                      'Exclusivities',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Scrollbar(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.grey,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetail())),
                          child: Container(
                            height: size.height * 0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset("assets/gel_douche.png"),
                                      backgroundColor: const Color(0x00ffffff),
                                      radius: 25,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Gel Douche Plaisir',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black,
                                              )),
                                          Text(
                                            '240.00 DA',
                                            style: TextStyle(
                                              color: Color(0xfffeaf29),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize:
                                            Size.fromWidth(size.width * 0.23),
                                        primary: Colors.white,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(3),
                                          side: BorderSide(
                                            width: 1,
                                            color: Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'add',
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}