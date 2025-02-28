
class GetApiModel {
  String name;
  String email;
  String mobNumber;
  String password;

  GetApiModel({required this.name, required this.mobNumber, required this.email, required this.password});

  Map<String, dynamic> toMap(){
    return {
      "name": name,
      "mobile_number": mobNumber,
      "email": email,
      "password": password
    };
  }

  // factory SignUpModel.fromJson(Map<String, dynamic> json){
  //   return {
  //     "name": json[],
  //     "mobile_number": mobNumber,
  //     "email": email,
  //     "password":
  //   }
  // }


}