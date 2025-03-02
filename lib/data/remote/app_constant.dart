// class AppConstant{
//   bool isEmailValid({required String email}){
//     final bool emailValid =
//     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//         .hasMatch(email);
//     return emailValid;
//   }
// dynamic emailValidate(String value){
//   if(value!.isEmpty){
//     return "Please fill the E-mail address";
//   } else if(!isEmailValid(email: value)){
//     return "please enter the valid E-mail address";
//   }else{
//     return null;
//   }
// }
// }