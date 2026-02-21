import "package:flutter/material.dart";

class AddNewTaskModal extends StatelessWidget {
  const AddNewTaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
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
            decoration: InputDecoration(
              label: Text("Write here..."),
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text("Add"),
            ),
          ),
        ],
      ),
    );
  }
}
