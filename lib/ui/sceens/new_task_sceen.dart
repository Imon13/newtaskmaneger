import 'package:flutter/material.dart.';
import 'package:maneger/ui/sceens/add_new_task_sceen.dart';

import '../weidgets/profile_appber.dart';
import '../weidgets/task_item.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
        child: Column(
          children: [
            buildSummerySection(),
            Expanded(child: ListView.builder(
              itemCount: 5,
                itemBuilder: (context,index){
              return TaskItem();
            }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTapAddButton,
        child: Icon(Icons.add),
      ),
    );
  }
 void _onTapAddButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskSceen()));

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



