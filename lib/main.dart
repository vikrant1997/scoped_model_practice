import 'package:flutter/material.dart';
import 'package:scoped_model_practice/ui/home_view.dart';
import 'service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: HomeView()),
    );
  }
}
