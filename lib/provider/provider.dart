import 'package:get/get.dart';

class Provider extends GetConnect{
  List articles=[].obs;
  
  Future<dynamic> getAlldata()async{
    final response = await get('https://newsapi.org/v2/everything?q=tesla&from=2023-05-06&sortBy=publishedAt&apiKey=0ca06035d7c64782b15108aa58935267');
    if(response.status.hasError){
      return Future.error(response.statusText!);

    }else{
      print(response.body);
      return response.body['articles'];

      /// u can get array list in your json api
      // return response.body['data];
      ///
    }
  }

  Future<List<dynamic>> getarticles()async{
    final response = await get('https://newsapi.org/v2/everything?q=tesla&from=2023-05-06&sortBy=publishedAt&apiKey=0ca06035d7c64782b15108aa58935267');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    }else{
      articles=response.body['articles'];
      return articles;


      /// u can get array list in your json api
      // return response.body['data];
      ///
    }



  }


}