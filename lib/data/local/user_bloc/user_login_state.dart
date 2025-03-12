
class UserLogInState{}
class UserLogInInitialState extends UserLogInState{}
class UserLogInLoadingState extends UserLogInState{}
class UserLogInSuccessState extends UserLogInState{}
class UserLogInFailedState extends UserLogInState{
  String errorMassage;
  UserLogInFailedState({required this.errorMassage});
}