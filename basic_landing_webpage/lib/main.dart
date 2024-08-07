import 'package:basic_landing_webpage/src/screens/my_web_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';
import 'src/screens/login_page.dart';
import 'src/screens/register_page.dart';
import 'src/screens/admin_page.dart';
void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: "Psiconnect",
        initialRoute: '/',
        routes:{
          '/': (context) => MyWebPage(),
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/admin': (context) => AdminPage(),

        }
      ),
    ),
  );
}
