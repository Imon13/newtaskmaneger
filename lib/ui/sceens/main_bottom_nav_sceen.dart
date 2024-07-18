import 'package:flutter/material.dart.';
import 'package:maneger/ui/sceens/cencle_task_sceen.dart';
import 'package:maneger/ui/sceens/completed_task_sceen.dart';
import 'package:maneger/ui/sceens/inprogress_task_sceen.dart';
import 'package:maneger/ui/sceens/new_task_sceen.dart';
import 'package:maneger/ui/utility/app_colors.dart';

class MainBottomNavSceen extends StatefulWidget {
  const MainBottomNavSceen({super.key});

  @override
  State<MainBottomNavSceen> createState() => _MainBottomNavSceenState();
}

class _MainBottomNavSceenState extends State<MainBottomNavSceen> {
  int _selectedIndex = 0;
  final List<Widget> _sceens =[
    NewTaskSceen(),
    CompletedTaskSceen(),
    InprogressTaskSceen(),
    CencleTaskSceen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _sceens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: (index){
            _selectedIndex =index;
          if(mounted){
            setState(() {

            });


          }
          },
          selectedItemColor: AppColors.themeColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.incomplete_circle_sharp),label: 'New Task'),
            BottomNavigationBarItem(icon: Icon(Icons.check_circle),label: 'complete'),
        BottomNavigationBarItem(icon: Icon(Icons.autorenew_outlined),label: 'InProgree'),

        BottomNavigationBarItem(icon: Icon(Icons.close),label: 'cencel'),
      ]),
    );
  }
}
