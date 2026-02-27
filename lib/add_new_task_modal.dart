import "package:flutter/material.dart";
import 'task.dart';

class AddNewTaskModal extends StatefulWidget {
  const AddNewTaskModal({super.key, required this.onAddTap});

  final Function(Task) onAddTap;

  @override
  State<AddNewTaskModal> createState() => _AddNewTaskModalState();
}

class _AddNewTaskModalState extends State<AddNewTaskModal> {
  final TextEditingController todoTEController = TextEditingController();
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
                  "Add New ToDo",
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
              maxLines: 4,
              controller: todoTEController,
              decoration: InputDecoration(
                label: Text("Write here..."),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return "Enter a your task";
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
                    Task task = Task(
                      details: todoTEController.text.trim(),
                      createDateTime: DateTime.now(),
                      updateDateTime: DateTime.now(),
                    );
                    widget.onAddTap(task);
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text("Add"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
