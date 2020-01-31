import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transit_tracker/model/uta_route.dart';
import 'package:transit_tracker/pages/route_map.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController routeNameController = TextEditingController();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          "TrackUTA",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 8,
                  ),
                  Text("Input the number of a route to track:"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      width: 45,
                      child: TextField(
                        controller: routeNameController,
                        decoration: InputDecoration(hintText: "850"),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 40,
                    child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: RaisedButton(
                        color: Theme.of(context).backgroundColor,
                        child: Text(
                          "GO",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      RouteMapPage(route: UTARoutes.route850)));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
