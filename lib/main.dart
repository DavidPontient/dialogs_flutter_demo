import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeleteDialogDemo(),
    );
  }
}

class DeleteDialogDemo extends StatelessWidget {
  const DeleteDialogDemo({super.key});

  void showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete this Item"), // Property 1
          content: const Text(
            "Are you sureeeeeee you want to delete this item?",
          ), // Property 2
          backgroundColor: Colors.white, // Property 3
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialogs Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDeleteDialog(context),
          child: const Text("Delete this Item"),
        ),
      ),
    );
  }
}
