import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swalis/authentification/signin_artisan.dart';
import 'package:swalis/authentification/signin_client.dart';
import 'package:swalis/client/ui/home/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
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
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xffEC0677),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black87)),
        ),
      ),
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
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
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60.0,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xffEC0677),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black87)),
        ),
      ),
    ],
  );
}

Widget buildForgotPssBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print('password forgot'),
      padding: EdgeInsets.only(right: 0.0),
      child: Text(
        'Forget password ?',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0x66EC0677),
                Color(0x99EC0677),
                Color(0xccEC0677),
                Color(0xffEC0677),
              ])),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 120,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
                ),
                buildEmail(),
                SizedBox(
                  height: 20.0,
                ),
                buildPassword(),
                buildForgotPssBtn(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5,
                    padding: EdgeInsets.all(15.0),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color(0xffEC0677),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInClient(),
                          ))
                    },
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text(
                      'Subscribe as client',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInArtisan()))
                    },
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text(
                      'Subscribe as supplier',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
