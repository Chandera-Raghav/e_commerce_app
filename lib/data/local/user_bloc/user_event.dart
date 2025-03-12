
abstract class UserEvent{}
class UserSignUpEvent extends UserEvent {
  // SignUpModel newModel;
  // UserSignUpEvent({required this.newModel});
  Map<String, dynamic> bodyParams;
  UserSignUpEvent({required this.bodyParams});
}
