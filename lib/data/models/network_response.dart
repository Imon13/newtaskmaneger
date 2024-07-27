class NetworkResponse{
  final int statuscode;
  final bool isSucces;
  final dynamic responseData;
  final String? errorMassage;

  NetworkResponse(
      {
        required this.statuscode,
        required this.isSucces,
         this.responseData,
         this.errorMassage = "something went wrong"
      }
      );

}