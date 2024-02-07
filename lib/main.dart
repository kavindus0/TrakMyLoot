import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseTrackerHome());
}

class ExpenseTrackerHome extends StatefulWidget {
  const ExpenseTrackerHome({super.key});

  @override
  State<ExpenseTrackerHome> createState() => _ExpenseTrackerHomeState();
}

class _ExpenseTrackerHomeState extends State<ExpenseTrackerHome> {
  bool _theme_is_white = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _theme_is_white ? ThemeData.light() : ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _theme_is_white = _theme_is_white ? false : true;
                  });
                },
                icon: _theme_is_white
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode))
          ],
          title: const Text("TrakMyLoot"),
        ),
        body: const Center(
          child: Text("Expense Tracker"),
        ),
      ),
    );
  }
}
