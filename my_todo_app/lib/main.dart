import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todo_app/provider.dart';
import 'package:my_todo_app/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TaskProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoPage(),
      ), //
    );
  }
}
