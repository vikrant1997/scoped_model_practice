import 'package:flutter/material.dart';
import 'package:scoped_model_practice/scoped_models/home_model.dart';
import 'package:scoped_model_practice/ui/views/base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => Scaffold(
                body: Center(
              child: Text(child.runtimeType.toString()),
              // child: Text('hi'),
            )));
  }
}
