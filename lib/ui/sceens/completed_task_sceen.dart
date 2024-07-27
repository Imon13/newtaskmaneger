import 'package:flutter/material.dart.';

import '../weidgets/profile_appber.dart';
import '../weidgets/task_item.dart';

class CompletedTaskSceen extends StatefulWidget {
  const CompletedTaskSceen({super.key});

  @override
  State<CompletedTaskSceen> createState() => _CompletedTaskSceenState();
}

class _CompletedTaskSceenState extends State<CompletedTaskSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: profileAppber(context),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index){
              return TaskItem();
            }));

  }
}
