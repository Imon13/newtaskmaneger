import 'package:flutter/material.dart.';

import '../weidgets/profile_appber.dart';
import '../weidgets/task_item.dart';

class CencleTaskSceen extends StatefulWidget {
  const CencleTaskSceen({super.key});

  @override
  State<CencleTaskSceen> createState() => _CencleTaskSceenState();
}

class _CencleTaskSceenState extends State<CencleTaskSceen> {
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
