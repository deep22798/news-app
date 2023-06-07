import 'package:get/get.dart';
import 'package:news_app_by_deep22798/controller/DataController.dart';

class DataBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DataController());
  }
}