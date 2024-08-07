import 'package:basic_landing_webpage/src/my_web_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MyApp(),
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
