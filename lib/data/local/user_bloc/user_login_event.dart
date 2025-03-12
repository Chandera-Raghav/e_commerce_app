abstract class UserLogInEvent {}
class UserSignInEvent extends UserLogInEvent {
  Map<String, dynamic> bodyParams;
  UserSignInEvent({required this.bodyParams});
}