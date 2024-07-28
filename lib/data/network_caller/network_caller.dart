import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../models/network_response.dart';

class NetworkCaller{
 static Future<NetworkResponse> getRequest(String url) async{
 try {
   Response response = await get(Uri.parse(url));
   if(response.statusCode == 200 || response.statusCode ==201){
     final decodeData = jsonDecode(response.body);
     return NetworkResponse(statuscode: response.statusCode,
         isSucces: true,
         responseData: decodeData,
         errorMassage: null);

   }
   else{
     return NetworkResponse(
         statuscode: response.statusCode,
         isSucces: false,
         responseData: null,
         errorMassage: null);

   }
 }
 catch(e){
   return NetworkResponse(statuscode: -1,
       isSucces: false,
       responseData: null,
       errorMassage: e.toString()
   );
 }

}
static Future<NetworkResponse> postRequest(String url,{Map<String , dynamic>? body}) async{
  try {
    debugPrint(url);
    debugPrint(body.toString());


    Response response = await post(Uri.parse(url),body: jsonEncode(body),headers: {
      'Content-type' : 'Application/json'
    });
    debugPrint(response.statusCode.toString());
    debugPrint(body.toString());


    if(response.statusCode == 200 || response.statusCode ==201){
      final decodeData = jsonDecode(response.body);
      return NetworkResponse(statuscode: response.statusCode,
          isSucces: true,
          responseData: decodeData,
          errorMassage: null);

    }
    else{
      return NetworkResponse(
          statuscode: response.statusCode,
          isSucces: false,
          responseData: null,
          errorMassage: null);

    }
  }
  catch(e){
    return NetworkResponse(statuscode: -1,
        isSucces: false,
        responseData: null,
        errorMassage: e.toString()
    );
  }

}

}