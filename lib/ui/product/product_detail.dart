import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home/home.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({ Key? key }) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value:  SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration:  BoxDecoration(
                    color: Color(0x66EC0677),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),

                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                  offset: Offset(0,2)
                              )
                            ]
                        ),
                        height: 250.0,
                        width: double.infinity,
                        child: Text('product image',
                          style: TextStyle(
                              color: Colors.black87
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                  offset: Offset(0,2)
                              )
                            ]
                        ),
                        height: 250.0,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25.0,
                            ),
                            Text('product name',
                              style: TextStyle(
                                  color: Colors.black87,
                                fontSize: 20.0,
                              ),

                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Family',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.0,
                              ),

                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text('PRICE',
                              style: TextStyle(
                                  color: Colors.black87,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Reduction',
                              style: TextStyle(
                                  color: Colors.black87
                              ),

                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text('Rating',
                              style: TextStyle(
                                  color: Colors.black87
                              ),

                            ),
                          ],
                        )
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Container(

                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,

                          child:RaisedButton(
                            elevation: 5,
                            padding: EdgeInsets.all(15.0),

                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => Home()
                              ));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            color:  Color(0xffEC0677),
                            child: Text(
                              'Add to my panel',
                              style: TextStyle(
                                color:  Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      )
                      ,



                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}