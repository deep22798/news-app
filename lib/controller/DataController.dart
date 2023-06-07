

import 'package:get/get.dart';
import 'package:news_app_by_deep22798/provider/provider.dart';

class DataController extends GetxController with StateMixin<List <dynamic>>{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Provider().getAlldata().then((value){
      change(value,status: RxStatus.success());
    },
      onError: (error){
      change(null,status: RxStatus.error(error.toString()));
      }
    );
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }



}
