import 'package:astartapp_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewProject extends StatelessWidget {
  const NewProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("New Project"),
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),

            CustomText(text: "Project Name", size: 18, color: Colors.black, weight: FontWeight.bold),

            SizedBox(height: 10),

            SizedBox(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "",
                  hintText: "Project",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),
            CustomText(text: "Description", size: 18, color: Colors.black, weight: FontWeight.bold),
            SizedBox(height: 10),
            SizedBox(
              width: 500,
              child: TextField(
                maxLines: 8,
                decoration: InputDecoration(
                  labelText: "",
                  hintText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            ),

            SizedBox(height: 15,),
            CustomText(text: "Users", size: 18, color: Colors.black, weight: FontWeight.bold),
            SizedBox(height: 10),

            ElevatedButton.icon(
              icon: FaIcon(FontAwesomeIcons.plus),
              label: Text("Add user"),
              onPressed: (){},
            ),

            SizedBox(height: 15,),
            CustomText(text: "Location", size: 18, color: Colors.black, weight: FontWeight.bold),
            SizedBox(height: 10),

            ElevatedButton.icon(
              icon: FaIcon(FontAwesomeIcons.mapMarkedAlt),
              label: Text("Set Location"),
              onPressed: (){},
            ),
          ],
        ),
      ),

      actions: [
        TextButton(
          child: Text("Cancel"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Text("Create"),
          onPressed: (){

            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
