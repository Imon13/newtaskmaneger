import 'package:flutter/material.dart.';
import 'package:maneger/ui/weidgets/background_weidgets.dart';
import 'package:maneger/ui/weidgets/profile_appber.dart';

class AddNewTaskSceen extends StatefulWidget {
  const AddNewTaskSceen({super.key});

  @override
  State<AddNewTaskSceen> createState() => _AddNewTaskSceenState();
}

class _AddNewTaskSceenState extends State<AddNewTaskSceen> {
 final TextEditingController _titleTEController = TextEditingController();
 final TextEditingController _descriptionTEController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppber(),
      body: BackgroundWeidgets(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextFormField(
                controller: _titleTEController,
                decoration: InputDecoration(
                  hintText: 'Title'
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: _descriptionTEController,
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: 'Description',
            
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Add'))
            ],),
          ) ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _descriptionTEController.dispose();
    _titleTEController.dispose();
  }
}

