
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swalis/authentification/product_info.dart';

import '../client/ui/home/home.dart';

class SignInArtisan extends StatefulWidget {
  const SignInArtisan({ Key? key }) : super(key: key);

  @override
  _SignInArtisanState createState() => _SignInArtisanState();
}

Widget buildFirstName(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Supplier information',
        style: TextStyle(
          color:  Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Container(
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
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xffEC0677),
              ),
              hintText: 'First name',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildLastName(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
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
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xffEC0677),
              ),
              hintText: 'Last name',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildPhoneNumber(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
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
              prefixIcon: Icon(
                Icons.phone_android,
                color: Color(0xffEC0677),
              ),
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildAdress(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
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
              prefixIcon: Icon(
                Icons.location_city,
                color: Color(0xffEC0677),
              ),
              hintText: 'Adress',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
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
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xffEC0677),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Password',
        style: TextStyle(
          color:  Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),

      Container(
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
          obscureText: true,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xffEC0677),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

Widget buildConfirmPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Container(
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
          obscureText: true,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xffEC0677),
              ),
              hintText: 'Confirm password',
              hintStyle: TextStyle(
                  color: Colors.black87
              )
          ),
        ),
      ),
    ],
  );
}

class _SignInArtisanState extends State<SignInArtisan> {
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
                        'Sign Up Supplier',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),

                      buildFirstName(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildLastName(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildEmail(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildPhoneNumber(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildAdress(),
                      SizedBox(
                        height: 10.0,
                      ),

                      buildPassword(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildConfirmPassword(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => ProductInfo()
                            ))
                          },
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text(
                            'Next  ',
                            style: TextStyle(

                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              shadows: <Shadow>[

                                Shadow(
                            color: Colors.black.withOpacity(0.3),
                              offset: Offset(1, 10),
                              blurRadius: 15),

                              ],

                            ),
                          ),

                        ),
                      )
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