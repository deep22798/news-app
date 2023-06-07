import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_by_deep22798/controller/DataController.dart';
class Splash extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("News App"),
      )
    );
  }
}
