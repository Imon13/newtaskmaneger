import 'package:flutter/material.dart.';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        title: Text("title will be here"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("description will be here"),
            Text("date:12/12/24",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text ('new'),shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),),
                ButtonBar(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
