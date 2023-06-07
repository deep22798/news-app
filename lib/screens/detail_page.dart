import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_by_deep22798/controller/DataController.dart';
class Details extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child:Get.arguments['urlToImage']!=null? Image.network(Get.arguments['urlToImage'],fit: BoxFit.fitWidth,):Text("null"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Get.arguments['title']!=null?Text(Get.arguments['title'], textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w800),):Text("null"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Get.arguments['author']!=null?Text(Get.arguments['author'],style: TextStyle(fontWeight: FontWeight.w800,color: Colors.teal),):Text("null"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Get.arguments['publishedAt']!=null? Text(Get.arguments['publishedAt'],style: TextStyle(fontWeight: FontWeight.w800,color: Colors.redAccent),):Text("null")
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Get.arguments['description']!=null?Text(Get.arguments['description'],style: TextStyle(fontWeight: FontWeight.normal),):Text("null"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Get.arguments['content']!=null?Text(Get.arguments['content'],style: TextStyle(fontWeight: FontWeight.normal),):Text("null")
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Get.arguments['url']!=null?Text(Get.arguments['url'],style: TextStyle(fontWeight: FontWeight.normal),):Text("null")
                ),
              ],
            ),
          )
      ),
    );
  }
}
