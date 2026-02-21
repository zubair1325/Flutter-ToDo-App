import 'package:flutter/material.dart';
import './add_new_task_modal.dart';
import 'update_task_modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MainState();
}

class _MainState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Todos")),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        itemCount: 20,
        padding: EdgeInsets.all(25),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (builder) {
                  return AlertDialog(
                    title: Center(child: Text("Actions")),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                              isDismissible: false,
                              context: context,
                              builder: (builder) {
                                return UpdateTaskModal();
                              },
                            );
                          },
                          leading: Icon(Icons.edit),
                          title: Text("Update"),
                        ),
                        Divider(height: 0),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          leading: Icon(Icons.delete),
                          title: Text("Delete"),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            title: Text("Do Code and complect the pending projects"),
            subtitle: Text("12-5-2023"),
            trailing: Text("Pending"),
            leading: CircleAvatar(child: Text("${index + 1}")),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(height: 4);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            isDismissible: false,
            context: context,
            builder: (builder) {
              return AddNewTaskModal();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
