import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'RegisterScreen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => new _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Center(
          child: new Image.asset(
            'images/bg.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.9),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(color: Colors.transparent, height: 100),
              SizedBox(
                width: double.infinity, // match_parent
                height: 150,
              ),
              ButtonTheme(
                height: 50,
                minWidth: 300,
                child: RaisedButton(
                    textColor: Colors.pink,
                    color: Colors.white,
                    child: Text("Register"),
                    onPressed: () {
                      print("Register");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
              SizedBox(
                width: double.infinity, // match_parent
                height: 30,
              ),
              ButtonTheme(
                height: 50,
                minWidth: 300,
                child: RaisedButton(
                    textColor: Colors.pink,
                    color: Colors.white,
                    child: Text("Login"),
                    onPressed: () {
                      print("Login");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
            ],
          ),
        )
      ],
    );



  }
}
