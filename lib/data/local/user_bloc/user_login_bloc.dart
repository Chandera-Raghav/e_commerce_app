import 'package:e_commerce_app/data/local/user_bloc/user_login_event.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_login_state.dart';
import 'package:e_commerce_app/data/repositories/app_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../remote/api_exception.dart';

class UserLogInBloc extends Bloc<UserLogInEvent, UserLogInState>{
  AppRepositories appRepositories;
  UserLogInBloc({required this.appRepositories}) : super(UserLogInInitialState()){
    on<UserSignInEvent>((event, emit) async {
      emit(UserLogInLoadingState());
      try {
        var data = await appRepositories.loginUser(mBodyParams: event.bodyParams);

        if(data["status"]){
          emit(UserLogInSuccessState());
          SharedPreferences? pref = await SharedPreferences.getInstance();
          pref.setString("UID", data['tokan']);
        }else{
          emit(UserLogInFailedState(errorMassage: data["massege"]));
        }
      }catch(e){
        emit(UserLogInFailedState(errorMassage: (e is AppExceptions) ? e.toString() : e.toString()));
      }
    });
  }
}