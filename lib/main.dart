import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  // Sample data list
  final List<String> items =
      List<String>.generate(20, (index) => 'Item ${index + 1}');

  ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.label),
            title: Text(items[index]),
            onTap: () {
              // Handle item tap
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You tapped on ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
