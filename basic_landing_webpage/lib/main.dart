import 'package:basic_landing_webpage/src/screens/my_web_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';
<<<<<<< HEAD
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

=======
import 'src/screens/login_page.dart';
import 'src/screens/register_page.dart';
import 'src/screens/admin_page.dart';
>>>>>>> 6448cd0147b5e0f7206028a18fa6d8929af3e857
void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
<<<<<<< HEAD
      child: MyApp(),
=======
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
>>>>>>> 6448cd0147b5e0f7206028a18fa6d8929af3e857
    ),
  );
}

class MyApp extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Psiconnect",
      home: MyWebPage(itemScrollController: itemScrollController),
    );
  }
}
