import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_practice/enums/view_state.dart';
import 'package:scoped_model_practice/service_locator.dart';
import 'package:scoped_model_practice/services/storage_service.dart';

class HomeModel extends Model {
  StorageService storageService = locator<StorageService>();
  String title = "HomeModel";

  ViewState _state;
  ViewState get state => _state;

  Future saveData() async {
    _setState(ViewState.Busy);
    title = 'savingData';
    await storageService.saveData();
    title = 'Data Saved';
    _setState(ViewState.Retrieved);
  }

  void _setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}
