import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_practice/enums/view_state.dart';
import 'package:scoped_model_practice/scoped_models/base_model.dart';
import 'package:scoped_model_practice/service_locator.dart';
import 'package:scoped_model_practice/services/storage_service.dart';

class HomeModel extends BaseModel {
  StorageService storageService = locator<StorageService>();
  String title = "HomeModel";

  Future<bool> saveData() async {
    setState(ViewState.Busy);
    title = 'savingData';
    await storageService.saveData();
    title = 'Data Saved';
    setState(ViewState.Retrieved);
    return true;
  }
}
