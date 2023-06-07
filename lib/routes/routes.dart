import 'package:get/get.dart';
import 'package:news_app_by_deep22798/binding/databinding.dart';
import 'package:news_app_by_deep22798/screens/Home.dart';
import 'package:news_app_by_deep22798/screens/detail_page.dart';
import 'package:news_app_by_deep22798/screens/splash.dart';

class Routes{




  static final routes=[
    GetPage(
        name: '/splash',
        page: ()=>Splash(),
      binding: DataBinding()

    ),GetPage(
        name: '/home',
        page: ()=>Home(),
      binding: DataBinding()
    ),GetPage(
        name: '/detail_page',
        page: ()=>Details(),
      binding: DataBinding()
    )
  ];
}
