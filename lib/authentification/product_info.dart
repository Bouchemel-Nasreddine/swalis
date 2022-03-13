import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../client/ui/home/home.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({ Key? key }) : super(key: key);

  @override
  _ProductInfoState createState() => _ProductInfoState();
}

Widget buildProductName(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

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
        height: 60.0,
        child: TextField(
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),

              hintText: 'Product name',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}



Widget buildPoductPrice(){
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
        height: 60.0,
        child: TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),

              hintText: 'Product price',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}


Widget buildProduction(){
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
        height: 60.0,
        child: TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),

              hintText: 'Capacity of production per week',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildDescription(){
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
        height: 100.0,
        child: TextField(

          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),

              hintText: 'Description',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}



class _ProductInfoState extends State<ProductInfo> {
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
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x66EC0677),
                          Color(0x99EC0677),
                          Color(0xccEC0677),
                          Color(0xffEC0677),
                        ]
                    )
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
                      Text(
                        'Product information',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),

                      buildProductName(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildPoductPrice(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildProduction(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildDescription(),

                      Container(

                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5,
                          padding: EdgeInsets.all(15.0),

                          onPressed: ()=> print('download image'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          color:  Colors.white,
                          child: Text(
                            'Add image of product',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color:  Colors.black87,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.symmetric(vertical: 25.0),

                          child:Row(

                            children: [
                              Container(
                                alignment: Alignment.bottomRight,
                                child: RaisedButton(
                                  elevation: 5,
                                  padding: EdgeInsets.all(15.0),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder:
                                        (context) => ProductInfo()
                                    ));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  color:  Colors.white,
                                  child: Text(
                                    'Add new product',
                                    style: TextStyle(
                                      color:  Color(0xffEC0677),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: RaisedButton(
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
                                  color:  Colors.white,
                                  child: Text(
                                    'Validate',
                                    style: TextStyle(
                                      color:  Color(0xffEC0677),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )

                            ],
                          )
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