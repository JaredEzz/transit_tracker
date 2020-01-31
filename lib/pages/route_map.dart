import 'dart:async';

import 'package:flutter/material.dart';
import 'package:transit_tracker/model/uta_route.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RouteMapPage extends StatefulWidget {
  UTARoute route;

  RouteMapPage({this.route});

  @override
  _RouteMapPageState createState() => _RouteMapPageState(route: route);
}

class _RouteMapPageState extends State<RouteMapPage> {
  UTARoute route;

  _RouteMapPageState({this.route});

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text("Route ${route.name}"),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(15), child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: WebView(
          initialUrl: route.url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },

        ),
      ),),
    );
  }
}
