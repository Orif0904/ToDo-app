import 'package:flutter/material.dart';
import 'package:todo_list_flutter/db/db_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTodoApp(),
    );
  }
}

class MyTodoApp extends StatefulWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  State<MyTodoApp> createState() => _MyTodoAppState();
}

class _MyTodoAppState extends State<MyTodoApp> {
  Color mainColor = const Color(0xff0d0952);
  Color secondColor = const Color(0xff212061);
  Color btnColor = const Color(0xffff955b);
  Color editorColor = const Color(0xff4044cc);

  // getTask() async {
  //   final tasks = await DBProvider.dataBase.getTask();
  //   print(tasks);
  //   return tasks;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: const Text("My To-Do!"),
      ),
      backgroundColor: mainColor,
      body: Column(
        children: [
          // Expanded(
          //   child: FutureBuilder(
          //     future: getTask(),
          //     builder: (_, taskData) {
          //       switch (taskData.connectionState) {
          //         case ConnectionState.waiting:
          //           {
          //             return const Center(child: CircularProgressIndicator());
          //           }
          //         case ConnectionState.done:
          //           {
          //             // return const Padding(
          //             //   padding: EdgeInsets.all(8.0),
          //             //   child: ListView.builder(
          //             //     itemCount: taskData.data.length,
          //             //     itemBuilder: (context, index) {
          //             //       String task = taskData.data[index]["task"];
          //             //       String day = DateTime.parse(taskData.data[index]['creationData']);
          //             //     },
          //             //   ),
          //             // );
          //           }
          //       }
          //     },
          //   ),
          // ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
            decoration: BoxDecoration(
                color: editorColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Type a new Task...",
                    ),
                  ),
                ),
                FlatButton.icon(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: const Text("Add Task"),
                  color: btnColor,
                  shape: const StadiumBorder(),
                  textColor: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
