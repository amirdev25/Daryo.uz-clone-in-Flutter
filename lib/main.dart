import 'package:daryo_clone/ui/details_page.dart';
import 'package:daryo_clone/ui/home_page.dart';
import 'package:daryo_clone/utils/Constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DaryoApp());
}

class DaryoApp extends StatelessWidget {
  const DaryoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Constants.HOME,
      routes: {
        Constants.HOME: (context) => HomePage(),
        Constants.DETAILS: (context) => DetailsPage(),
      },
    );
  }
}
