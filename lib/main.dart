import 'package:flutter/material.dart';
import 'package:yuvasri_2110/features/onboarding/view/onboarding1.dart';
import 'package:yuvasri_2110/features/onboarding/view/onboarding2.dart';
import 'package:yuvasri_2110/features/onboarding/view/onboarding3.dart';
import 'routes/routes_constants.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesConstants.onboarding1, // Starting point for the onboarding
      routes: {
        RoutesConstants.onboarding1: (context) => Onboarding1View(),
        RoutesConstants.onboarding2: (context) => Onboarding2View(),
        RoutesConstants.onboarding3: (context) => Onboarding3View(),
       // RoutesConstants.home: (context) => HomeScreen(), // Define Home screen route
        //RoutesConstants.login: (context) => LoginScreen(), // Define Login screen route
      },
    );
  }
}
