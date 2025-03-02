import 'dart:convert';
import 'dart:io';

import 'package:e_commerce_app/data/remote/api_exception.dart';
import 'package:http/http.dart' as http;
class ApiHelper{
  Future<dynamic> getApi({required String url, Map<String, dynamic>? mBodyParams}) async {
    try{
      var res = await http.post(Uri.parse(url), body: mBodyParams!=null ? jsonEncode(mBodyParams) : {});
        return returnJsonResponse(res);
    }on SocketException catch(e){
      throw(FetchDataException(errorMsg: "no Internet : $e"));
    }
  }

  Future<dynamic> postApi({required String url, Map<String, dynamic>? mBodyParams}) async {

    try{
      var res = await http.post(Uri.parse(url), body: mBodyParams!= null ? jsonEncode(mBodyParams) : {});
      return returnJsonResponse(res);
    }on SocketException catch(e) {
      throw(FetchDataException(errorMsg: e.message));
    }
  }
  Future<dynamic> postApiLogin({required String url, Map<String, dynamic>? mBodyParams}) async {
    try{
      var res = await http.post(Uri.parse(url), body: mBodyParams!= null ? jsonEncode(mBodyParams) : {});
      return returnJsonResponse(res);
    }on SocketException catch(e){
      throw(FetchDataException(errorMsg: e.message));
    }
  }
  dynamic returnJsonResponse(http.Response response) {
    switch(response.statusCode){
      case 200:
      {
          var mData = jsonDecode(response.body);
          return mData;
      }
      case 400: throw(BadRequestException(errorMsg: response.body.toString()));
      case 401:
      case 403:
        throw UnauthorisedException(errorMsg: response.body.toString());
      case 500:
      default:
        throw(FetchDataException(errorMsg: "Error occurred while communication with server with statusCode : ${response.statusCode}"));
    }
  }
}