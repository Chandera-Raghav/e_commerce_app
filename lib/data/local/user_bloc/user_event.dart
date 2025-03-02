
abstract class UserEvent{}
class UserSignUpEvent extends UserEvent {
  // SignUpModel newModel;
  // UserSignUpEvent({required this.newModel});
  Map<String, dynamic> bodyParams;
  UserSignUpEvent({required this.bodyParams});
}
class UserSignInEvent extends UserEvent {
  // SignUpModel loginUser;
  // UserSignInEvent({required this.loginUser});
  Map<String, dynamic> bodyParams;
  UserSignInEvent({required this.bodyParams});
}