class AppExceptions implements Exception{
  String title;
  String massage;
  AppExceptions({required this.title, required this.massage});

  @override
  String toString(){
    return "$title : $massage";
  }
}
class FetchDataException extends AppExceptions{
  FetchDataException({required String errorMsg}) : super(title: "Network Error", massage: errorMsg);
}
class BadRequestException extends AppExceptions{
  BadRequestException({required String errorMsg}) : super(title: "Invalid Request : ", massage: errorMsg);
}
class UnauthorisedException extends AppExceptions{
  UnauthorisedException({required String errorMsg}) : super(title: "Unauthorised Exception : ", massage: errorMsg);
}
class InvalidInputException extends AppExceptions{
  InvalidInputException({required String errorMsg}) : super(title: "Invalid Input : ", massage: errorMsg);
}