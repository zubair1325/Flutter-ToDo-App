import 'package:flutter/material.dart';
import 'package:todo_app/task.dart';
import 'add_new_task_modal.dart';
import 'update_task_modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MainState();
}

class _MainState extends State<HomePage> {
  List<Task> taskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Todos")),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return ListTile(
            hoverColor: const Color.fromARGB(255, 238, 231, 231),
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
                                return UpdateTaskModal(
                                  task: taskList[index],
                                  onTodoUpdate: (String updatedDetailsText) {
                                    updateTodo(index, updatedDetailsText);
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            );
                          },
                          leading: Icon(Icons.edit),
                          title: Text("Update"),
                        ),
                        Divider(height: 0),
                        ListTile(
                          onTap: () {
                            deleteTodo(index);
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
            onLongPress: () {
              String corrStatus = taskList[index].status.trim() == "pending"
                  ? "done"
                  : "pending";
              taskList[index].status = corrStatus;
              setState(() {});
            },
            title: Text(taskList[index].details),
            subtitle: Text(taskList[index].createDateTime.toString()),
            trailing: Text(
              taskList[index].status,
              style: taskList[index].status.trim() == "done"
                  ? TextStyle(color: Colors.blue)
                  : null,
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Text("${index + 1}"),
            ),
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
              return AddNewTaskModal(
                onAddTap: (Task task) {
                  addTask(task);
                },
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addTask(Task task) {
    taskList.add(task);
    setState(() {});
  }

  void deleteTodo(int index) {
    taskList.removeAt(index);
    setState(() {});
  }

  void updateTodo(int index, String todoDetails) {
    taskList[index].details = todoDetails;
    taskList[index].status = "pending";
    setState(() {});
  }

  void updateTodoStatus(int index, String status) {
    taskList[index].status = status;
    setState(() {});
  }
}
