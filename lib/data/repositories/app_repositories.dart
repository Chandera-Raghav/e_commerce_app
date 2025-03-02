import 'package:e_commerce_app/data/remote/api_helper.dart';
import 'package:e_commerce_app/data/remote/ulr_helper.dart';

class AppRepositories{
  ApiHelper apiHelper;
  AppRepositories({required this.apiHelper});
  Future<dynamic> registrationUser({required Map<String, dynamic> mBodyParams}) async {
    try{
      return await apiHelper.postApi(url: UrlHelper.registerUrl, mBodyParams: mBodyParams);
    }catch(e){
      throw(e);
    }
  }
  Future<dynamic> loginUser({required Map<String, dynamic> mBodyParams}) async {
    try{
      dynamic data = await apiHelper.postApiLogin(url: UrlHelper.loginUrl, mBodyParams: mBodyParams);
      print("Login error : ${data.toString()}");
      return data;
    }catch(e){
      throw(e);
    }
  }
}