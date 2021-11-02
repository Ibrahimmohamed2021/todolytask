
import 'package:flutter/material.dart';

class  AddTaskScreen extends StatefulWidget {


    AddTaskScreen({Key? key,this.startTime }) : super(key: key);
  static const String routeName = "/addTask";
  DateTime? startTime;


  @override
  State<AddTaskScreen> createState() => _AddTaskScreen();
}
class _AddTaskScreen extends State<AddTaskScreen>{
  TextEditingController taskNameController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Add Task"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: taskNameController,
                        // onChanged: (val) {
                        //   print(val);
                        // },
                        //keyboardType: TextInputType.number,
                        //enabled: false,
                        decoration: InputDecoration(


                          hintText: "Enter Task Name",
                          label: const Text("Task Name"),

                          enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),

                          ),
                          focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .secondary,
                              width: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Due Data"),
                      style: TextButton.styleFrom(),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme
                        .of(context)
                        .primaryColor,
                  ),
                  onPressed: () {
                    if (taskNameController.text != "" ) {
                      Navigator.of(context).pop(taskNameController.text);
                      DateTime startTime = DateTime.now();
                      print(startTime);
                   //   tasks[index].startTime = DateTime.now();


                    }
                  },
                  child: const Text("Add Task")),
            ],
          ),
        ),
      );
    }

}
