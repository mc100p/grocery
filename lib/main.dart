import 'package:flutter/material.dart';
import 'package:grocery/pages/homePage.dart';
import 'package:grocery/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.redAccent,
          accentColor: Colors.grey[200],
          colorScheme: ColorScheme.light(
            primary: Colors.redAccent,
          ),
          appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            textTheme: TextTheme(
              headline6: TextStyle(color: Colors.white, fontSize: 20.0),
              button: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        routes: RouteHelper.routes,
        home: HomePage());
  }
}
