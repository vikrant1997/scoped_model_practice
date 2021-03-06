import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_practice/enums/view_state.dart';
import 'package:scoped_model_practice/scoped_models/home_model.dart';
import 'package:scoped_model_practice/service_locator.dart';
import 'package:scoped_model_practice/ui/views/base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => Scaffold(
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _getBodyUi(model.state),
                    Text(model.title),
                  ],
                ), // child: Text('hi'),
              ),
              floatingActionButton: FloatingActionButton(onPressed: () {
                model.saveData();
              }),
            ));
  }

  Widget _getBodyUi(ViewState state) {
    switch (state) {
      case ViewState.Busy:
        return CircularProgressIndicator();
      case ViewState.Retrieved:
      default:
        return Text('Done');
    }
  }
}
