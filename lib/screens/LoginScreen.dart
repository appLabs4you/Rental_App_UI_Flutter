import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                  width: size.width,
                  color: Colors.white,
                  child: Text(
                    "Login",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  )
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                width: size.width,
                child: Text("YOUR EMAIL :", style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700
                ),)),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter email',
                  hintStyle: TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: Colors.black12,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                width: size.width,
                child: Text("PASSWORD :", style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700
                ))),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  hintStyle: TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: Colors.black12,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: ButtonTheme(
                height: 50,
                minWidth: double.infinity,
                child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.pink,
                    child: Text("Login"),
                    onPressed: () {
                      print("Login");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Can't Login ?", style: TextStyle(color:Colors.black54, fontSize: 14.0)),
               Text("Forgot Password", style: TextStyle(color: Colors.pink, fontSize: 14.0),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
