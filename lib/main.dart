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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      _theme_is_white = _theme_is_white ? false : true;
                    });
                  },
                  icon: _theme_is_white
                      ? const Icon(
                          Icons.dark_mode,
                          size: 30,
                        )
                      : const Icon(
                          Icons.light_mode,
                          size: 30,
                        )),
            )
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outline,
                size: 30,
              ),
            ),
          ),
          title: const Center(
            child: Text(
              "TrakMyLoot",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                textBaseline: TextBaseline.ideographic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: const Center(
          child: Text("Expenses Tracker"),
        ),
      ),
    );
  }
}
