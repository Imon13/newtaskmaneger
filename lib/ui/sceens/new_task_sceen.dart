import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart.';

import '../weidgets/profile_appber.dart';
import '../weidgets/task_summary_card.dart';

class NewTaskSceen extends StatefulWidget {
  const NewTaskSceen({super.key});

  @override
  State<NewTaskSceen> createState() => _NewTaskSceenState();
}

class _NewTaskSceenState extends State<NewTaskSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppber(),
      body: Column(
        children: [
          buildSummerySection()
        ],
      ),
    );
  }

 Widget  buildSummerySection() {
    return SingleChildScrollView(
          child: Row(
            children: [
              taskSummeryCard(
                count: '32',
                title: 'New Task',
              ),
              taskSummeryCard(
                count: '32',
                title: 'Completed',
              ),
              taskSummeryCard(
                count: '32',
                title: 'InProgress',
              ),taskSummeryCard(
                count: '32',
                title: 'Cencel',
              )
            ],
          ),
        );
  }
}


