import 'package:e_commerce_app/data/local/user_bloc/user_event.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_state.dart';
import 'package:e_commerce_app/data/repositories/app_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../remote/api_exception.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  AppRepositories appRepositories;
  UserBloc({required this.appRepositories}) : super(UserInitialState()){

    on<UserSignUpEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        var data = await appRepositories.registrationUser(mBodyParams: event.bodyParams);
        if (data["status"]) {
          emit(UserSuccessState());
        }
        else {
          print("hi null");
          emit(UserFailedState(errorMassage: data['massege']));
        }
      }catch(e){
        print("hi");
        emit(UserFailedState(errorMassage: (e is AppExceptions) ? e.toString() : e.toString()));
      }
    });
    on<UserSignInEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        var data = await appRepositories.loginUser(mBodyParams: event.bodyParams);
        print("out side : ${data['status']}");

        if(data["status"]){
          print(data['status']);
          emit(UserSuccessState());
        }else{
          emit(UserFailedState(errorMassage: data["massege"]));
        }
      }catch(e){
        print("nuu program");
        emit(UserFailedState(errorMassage: (e is AppExceptions) ? e.toString() : e.toString()));
      }
    });
  }

}