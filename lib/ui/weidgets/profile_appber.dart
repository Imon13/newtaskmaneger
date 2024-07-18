import 'package:flutter/material.dart.';

import '../utility/app_colors.dart';

AppBar profileAppber() {
  return AppBar(
    backgroundColor: AppColors.themeColor,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Imon",style: TextStyle(
            fontSize: 16,
            color: Colors.white
        ),),
        Text("imon@gmail.com",style: TextStyle(
            fontSize: 12,
            color: Colors.white
        ),)
      ],
    ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.logout))
    ],
  );
}
