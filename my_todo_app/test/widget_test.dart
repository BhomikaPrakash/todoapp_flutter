// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_todo_app/main.dart';
import 'package:my_todo_app/model.dart';

void main() {
  testWidgets('Task toggleCOmplete should chnage isCompletedstatus', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    final task = Task(
      id: '1',
      title: 'Test Task',
      description: 'This is a test task',
    );
    expect(task.isCompleted, false);

    task.toggleCompleted();
    expect(task.isCompleted, true);

    task.toggleCompleted();
    expect(task.isCompleted, false);
  });
}
