import 'package:flutter/material.dart';

import 'OTPScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => new _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String selectedCountry = 'Select Country';
  final arrayOfCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
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
                          "Register",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, right: 10.0),
                                  width: size.width,
                                  child: Text(
                                    "FIRST NAME :",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w700),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 10.0, top: 10),
                                child: TextField(
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Enter FirstName',
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
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, right: 20.0),
                                  width: size.width,
                                  child: Text(
                                    "LAST NAME :",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w700),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 10),
                                child: TextField(
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Enter LastName',
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
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      width: size.width,
                      child: Text("COUNTRY :",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700))),
                  GestureDetector(
                    onTap: (){
                      _settingModalBottomSheet(context);
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                      width: size.width,
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(30.0)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, right:20.0),
//                            child: Text(selectedCountry,
//                            textWidthBasis: TextWidthBasis.parent ,
//                            ),

                          child: Row(
                            children: <Widget>[
                            Expanded(child: Text(selectedCountry)),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      width: size.width,
                      child: Text("EMAIL :",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700))),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
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
                      child: Text("MOBILE :",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700))),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile',
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
                      child: Text("PASSWORD :",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700))),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
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
                          child: Text("Register"),
                          onPressed: () {
                            print("Register");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OTPScreen()),
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
                      Text("By sign up, you agree our ",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 14.0)),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(color: Colors.pink, fontSize: 14.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Column(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left:25.0, right: 20.0),
                    color: Colors.pink,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Country ",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child: ListView.builder(
                      itemCount: arrayOfCountries.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(arrayOfCountries[index], style: TextStyle(color: Colors.black45, fontSize: 14)),
                          trailing: Icon(Icons.keyboard_arrow_right),
                         // onTap: () => onTapped(arrayOfCountries[index]),
                            onTap: () {
                              Navigator.pop(context);
                              onTapped(arrayOfCountries[index]);
                            }
                        );
                      }),
                )
              ],
            ),
          );
        });
  }

  void onTapped(String country) {
    // navigate to the next screen
    setState(() {
      selectedCountry = country;
    });
  }
}
