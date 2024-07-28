import 'package:flutter/material.dart';

void showSnackberMassage(BuildContext context,String massage,[bool isError = false]){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(massage),backgroundColor: isError ? Colors.red : null,));


}