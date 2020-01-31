import 'package:flutter/material.dart';

class UTARoute{
  final String name;
  final String url;
  final Color color;

  const UTARoute(this.name, this.url, this.color);

}

class UTARoutes {

  static const UTARoute route850 = const UTARoute("850", "https://www.rideuta.com/Rider-Tools/Vehicle-Locator/Map?route=850", Colors.green);
  static const UTARoute route834 = const UTARoute("834", "https://www.rideuta.com/Rider-Tools/Vehicle-Locator/Map?route=834", Colors.orange);
  static const UTARoute route807 = const UTARoute("807", "https://www.rideuta.com/Rider-Tools/Vehicle-Locator/Map?route=834", Colors.red);
  static const UTARoute routeUVX = const UTARoute("807", "https://www.rideuta.com/Rider-Tools/Vehicle-Locator/Map?route=830X", Colors.grey);
  static const UTARoute routeUFR = const UTARoute("Frontrunner", "https://www.rideuta.com/Rider-Tools/Vehicle-Locator/Map?route=750", Colors.purple);
}


