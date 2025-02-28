abstract class UserState {}
class UserInitialState extends UserState{}
class UserLoadingState extends UserState{}
class UserSuccessState extends UserState{}
class UserFailedState extends UserState{
  String errorMassage;
  UserFailedState({required this.errorMassage});
}