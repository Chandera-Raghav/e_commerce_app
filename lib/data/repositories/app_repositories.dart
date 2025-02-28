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
}