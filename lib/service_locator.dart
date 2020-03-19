import 'package:get_it/get_it.dart';
import 'package:scoped_model_practice/scoped_models/error_model.dart';
import 'package:scoped_model_practice/scoped_models/home_model.dart';
import 'package:scoped_model_practice/scoped_models/success_model.dart';
import 'package:scoped_model_practice/services/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //services
  locator.registerLazySingleton<StorageService>(() => StorageService());
  //models
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());
  locator.registerFactory<ErrorModel>(() => ErrorModel());
}
