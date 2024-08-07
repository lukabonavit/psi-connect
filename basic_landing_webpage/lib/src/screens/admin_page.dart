import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Scaffold(
	  appBar: AppBar(
		title: Text('Administración'),
	  ),
	  body: Center(
		child: Text('Bienvenido a la página de administración'),
	  ),
	);
  }
}