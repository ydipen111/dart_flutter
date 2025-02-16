import 'package:dio/dio.dart';

class ApiError{
  late String errMessage;

   ApiError.errorCheck(DioException error){

     switch(error.type){

       case DioExceptionType.connectionTimeout:
         // TODO: Handle this case.

         errMessage = "connection TimeOut.";
         case DioExceptionType.sendTimeout:
         // TODO: Handle this case.
         throw UnimplementedError();
       case DioExceptionType.receiveTimeout:
         // TODO: Handle this case.
         errMessage = "Connection receive Timeout.";
         case DioExceptionType.badCertificate:
         // TODO: Handle this case.
         throw UnimplementedError();


       //   fir badRequest
       case DioExceptionType.badResponse:
         switch(error.response?.statusCode){
           case 404:
              errMessage = "page not found";

           case 413:
             errMessage = "File size is to large";

           case 400:
             errMessage = '${error.response?.data}';

           case 405:
             errMessage = "Method not allowed";

           case 401:
             errMessage = "Unauthorized";

           case 500:
             errMessage = "server error";

           case 404:
             errMessage = "";





         }

       case DioExceptionType.cancel:
         // TODO: Handle this case.
         errMessage = "Server cancel error";
       case DioExceptionType.connectionError:
         // TODO: Handle this case.
         throw UnimplementedError();
       case DioExceptionType.unknown:
         // TODO: Handle this case.
         errMessage = "Please check your connection";

     }




  }
}