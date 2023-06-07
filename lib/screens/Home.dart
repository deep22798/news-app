import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_by_deep22798/controller/DataController.dart';
import 'package:news_app_by_deep22798/provider/provider.dart';
import 'package:news_app_by_deep22798/screens/detail_page.dart';
class Home extends GetView<DataController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: controller.obx((data) => SafeArea(
        child: Center(
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: TextField(
                //     autofocus: true,
                //     // onChanged: (value) => Provider().filternews),
                //     decoration: InputDecoration(
                //       contentPadding:
                //       const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                //       hintText: "Search",
                //       suffixIcon: const Icon(Icons.search),
                //       // prefix: Icon(Icons.search),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(20.0),
                //         borderSide: const BorderSide(),
                //       ),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: ()=>Get.toNamed('/detail_page',arguments: {
                            "author":data[index]['author'],
                            "title":data[index]['title'],
                            "description":data[index]['description'],
                            "url":data[index]['url'],
                            "urlToImage":data[index]['urlToImage'],
                            "publishedAt":data[index]['publishedAt'],
                            "content":data[index]['content'],
                          }),
                          child: Card(color: Colors.teal.shade50,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  data[index]['urlToImage']!=null?Container(
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                          child: Image.network(data[index]['urlToImage'].toString(), loadingBuilder: (BuildContext context, Widget child,
                                              ImageChunkEvent? loadingProgress) {
                                            if (loadingProgress == null) return child;
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress.expectedTotalBytes != null
                                                    ? loadingProgress.cumulativeBytesLoaded /
                                                    loadingProgress.expectedTotalBytes!
                                                    : null,
                                              ),
                                            );
                                          },))):Text("null"),
                                  SizedBox(height: 10,),

                                  data[index]['title']!=null?Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(data[index]['title'],style: TextStyle(fontWeight: FontWeight.w700,),),
                                  ):Text("null"),
                                  SizedBox(height: 10,),
                                  data[index]['content']!=null?Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(data[index]['content']),
                                  ):Text("null"),
                                  SizedBox(height: 10,)


                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: data!.length,
                  ),
                ),
              ],
            )
        ),
      )),
    );
  }
}

