import 'package:flutter/material.dart';
import 'package:yuvasri_2110/routes/routes.dart';
import 'package:yuvasri_2110/routes/routes_constants.dart';
import 'package:yuvasri_2110/utils/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: AppTheme.lightTheme,  
      onGenerateRoute: AppRoutes.generateRoute,  
      initialRoute: RoutesConstants.splashScreen, 
    );
  }
}
