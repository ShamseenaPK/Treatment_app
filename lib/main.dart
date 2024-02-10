import 'package:flutter/material.dart';
import 'package:treatmentapp/sharedPreference/shared_serviece.dart';
import 'package:treatmentapp/ui/dashboad/dashboard_page.dart';
import 'package:treatmentapp/ui/loginPage/login_page.dart';

Widget _defaultHome = LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool _isLoggedIn = await SharedService.isLoggedIn();
  if (_isLoggedIn) {
    _defaultHome =  const DashboardPage();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dashboard',
        debugShowCheckedModeBanner: false,
        home: _defaultHome,
        routes: <String, WidgetBuilder>{
          '/dashboard': (BuildContext context) => const DashboardPage(), 
          '/login': (BuildContext context) =>  LoginPage(), 
        },
        );
  }
}
