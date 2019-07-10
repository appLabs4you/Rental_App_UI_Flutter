import 'package:flutter/material.dart';
import 'package:rental_app_design/models/VillaModel.dart';
import 'package:rental_app_design/screens/custom/TagViewWidget.dart';

class PropertyScreen extends StatefulWidget {
  @override
  PropertyScreenState createState() {
    // TODO: implement createState
    return PropertyScreenState();
  }
}

class PropertyScreenState extends State<PropertyScreen> {
  final arrayOftype = [
    'Most Popular',
    'Recent Added',
    'Upcoming Plan',
  ];
  String selectedCountry = '';
  PageController pageController;
  double viewPortFraction = 0.5;
  int currentPage = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedCountry = arrayOftype[0];
    pageController = PageController(
        initialPage: currentPage, viewportFraction: viewPortFraction);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: TagViewWidget(
              clipType: ClipType.arc,
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.pink)),
        ),
        Container(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                alignment: Alignment.bottomCenter,
                child: Text("Property",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: loadPageView(context),
                ),
                flex: 3,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _settingModalBottomSheet(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10),
                        height: 50,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                selectedCountry,
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.pink,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Text("View More >",
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                  )
                ],
              ),
              Expanded(
                  child: Container(
                    color: Colors.white,
                    child: ListView.builder(
                      padding: EdgeInsets.all(0.0),
                      itemCount: arrayofpageItem.length,
                      itemBuilder: (context, index) {
                        return getListViewItemRow(arrayofpageItem[index]);
                      },
                    ),
                  ),
                  flex: 2)
            ],
          ),
        )
      ],
    );
  }

  Widget getListViewItemRow(VillaModel model) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 5),
                    Text(
                      model.villaName,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Rental Date: "+model.rentDate,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      model.address+" "+model.flatSize,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12.0, color: Colors.black54),
                    ),
                    SizedBox(height: 5),
                    Text(
                      model.area,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12.0, color: Colors.black54),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              width: 90,
              decoration: new BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15.0)),
              height: 30,
              alignment: Alignment.center,
              child: Text("VACANT",
                  style: TextStyle(color: Colors.white, fontSize: 11)),
            )
          ],
        ),
      ),
    );
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
                    padding: EdgeInsets.only(left: 25.0, right: 20.0),
                    color: Colors.pink,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Country ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child: ListView.builder(
                      itemCount: arrayOftype.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(arrayOftype[index],
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 12)),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            // onTap: () => onTapped(arrayOftype[index]),
                            onTap: () {
                              Navigator.pop(context);
                              onTapped(arrayOftype[index]);
                            });
                      }),
                )
              ],
            ),
          );
        });
  }

  void onTapped(String country) {
    setState(() {
      selectedCountry = country;
    });
  }

  Widget loadPageView(BuildContext context) {
    return PageView.builder(
        itemCount: arrayofpageItem.length,
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        controller: PageController(
          viewportFraction: 0.9,
          initialPage: 0,
        ),
        itemBuilder: (context, index) {
          return getPageViewCard(arrayofpageItem[index]);
        });
  }

  Widget getPageViewCard(VillaModel model) {
    return Container(
        height: 200,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          //color: Colors.red[400],
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xEE000000),
              offset: Offset(0.0, 6.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(20.0),
                child: Image.asset(
                  'images/bg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 80,
                margin: EdgeInsets.only(bottom: 70, left: 16),
                padding: EdgeInsets.only(top: 10, left: 16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                alignment: Alignment.topLeft,
                height: 60,
                child: Text(
                  "Vacant",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 80,
                      margin: EdgeInsets.only(bottom: 20, left: 12),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(
                            model.villaName,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            model.rentDate,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 5),
                          Flexible(
                            child: Text(
                              model.address+"  "+model.flatSize,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black54),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(bottom: 20, right: 12),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Text(
                      "View  More",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  padding: EdgeInsets.only(top: 20),
                  color: Colors.transparent,
                  child: getStatusTagView(model.isInsured)),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 16),
                child: getDateContainer("01-01-2019"),
              ),
            )
          ],
        ));
  }

  Widget getStatusTagView(bool isInsured) {
    Color color = Colors.grey;
    String insuredString = "UNINSURED";
    if (isInsured) {
      color = Colors.green;
      insuredString = "INSURED";
    }
    return ClipPath(
        child: TagViewWidget(
            clipType: ClipType.traingle,
            child: Container(
                height: 40,
                width: 100,
                color: color,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  insuredString,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ))));
  }

  Widget getDateContainer(String date) {
    return Container(
      height: 30,
      width: 90,
      decoration: myBoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.date_range,
            color: Colors.white,
            size: 16,
          ),
          Text(
            date,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.transparent,
      border: Border.all(width: 1.0, color: Colors.white),
      borderRadius: BorderRadius.all(
          Radius.circular(15) //         <--- border radius here
          ),
    );
  }

  List<VillaModel> arrayofpageItem = [
    new VillaModel(
        villaName: "Spring Meadows",
        address: "Noida",
        isInsured: true,
        rentDate: "12 monthly",
        isVacant: true,
        flatSize: "2 & 3 BHK Flats",
        area: "82.219 - 141.21 sqm",
        price: "29.2 Lac onwards"),
    new VillaModel(
        villaName: "Saya Gold Avenue",
        address: "Ghaziabad",
        isInsured: false,
        rentDate: "02 monthly",
        isVacant: true,
        flatSize: "2, 3 & 4 BHK Flats ",
        area: "100.37 - 220.26 sqm",
        price: "79.2 Lac onwards"),
    new VillaModel(
        villaName: "Eros Sampoornam",
        address: "Greater Noida",
        isInsured: true,
        rentDate: "05 monthly",
        isVacant: false,
        flatSize: "2 & 3 BHK  Apartments",
        area: "77.58 - 144.92 sqm",
        price: "32.1 Lac onwards"),
    new VillaModel(
        villaName: "Himalaya Pride",
        address: "Greater Noida",
        isInsured: true,
        rentDate: "10 monthly",
        isVacant: true,
        flatSize: "2, 3 & 4 BHK Flats",
        area: "1188 - 1974 sqft",
        price: "40.2 Lac onwards"),
  ];
}
