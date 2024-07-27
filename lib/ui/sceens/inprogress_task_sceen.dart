import 'package:flutter/material.dart.';
import 'package:maneger/ui/weidgets/profile_appber.dart';

import '../weidgets/task_item.dart';

class InprogressTaskSceen extends StatefulWidget {
  const InprogressTaskSceen({super.key});

  @override
  State<InprogressTaskSceen> createState() => _InprogressTaskSceenState();
}

class _InprogressTaskSceenState extends State<InprogressTaskSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppber(),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return TaskItem();
          }));

  }
}
