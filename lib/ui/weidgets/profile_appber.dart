import 'package:flutter/material.dart.';
import 'package:maneger/ui/sceens/update_profile_sceen.dart';

import '../utility/app_colors.dart';

AppBar profileAppber(context,[bool fromUpdateprofile =false]) {
  return AppBar(
    backgroundColor: AppColors.themeColor,
    title: GestureDetector(

      onTap: (){
        if(fromUpdateprofile){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfileSceen()));
      },
      child: Column(
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
    ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.logout))
    ],
  );
}
