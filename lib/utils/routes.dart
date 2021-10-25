import 'package:flutter/material.dart';
import 'package:grocery/pages/categories.dart';

class RouteNames {
  static const String categories = 'categories';
}

class RouteHelper {
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.categories: (context) => new Categories(),
  };
}
