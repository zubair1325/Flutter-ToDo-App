import "package:flutter/material.dart";
import 'task.dart';

class UpdateTaskModal extends StatefulWidget {
  final Task task;
  final Function(String) onTodoUpdate;
  const UpdateTaskModal({
    super.key,
    required this.task,
    required this.onTodoUpdate,
  });

  @override
  State<UpdateTaskModal> createState() => _UpdateTaskModalState();
}

class _UpdateTaskModalState extends State<UpdateTaskModal> {
  late final TextEditingController todoTEController = TextEditingController(
    text: widget.task.details,
  );
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Update ToDo",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: todoTEController,
              maxLines: 4,
              decoration: InputDecoration(
                label: Text("Write here..."),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return "Task can not be empty";
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.onTodoUpdate(todoTEController.text.trim());
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
