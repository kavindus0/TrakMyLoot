import 'package:expensetracker/transections.dart';

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

  List<Transactions> expensesItems = [
    Transactions(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transactions(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now()),
    Transactions(
        id: 't3',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now()),
    Transactions(
        id: 't4',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now()),
    Transactions(
        id: 't5',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now()),
    Transactions(
      id: 't6',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't7',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

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
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 150,
              margin: const EdgeInsets.all(10),
              child: const ColoredBox(
                color: Colors.lightBlue,
                child: Text("DASHBOARD"),
              ),
            ),
            SingleChildScrollView(
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: expensesItems.map(
                    (e) {
                      return Container(
                        margin: const EdgeInsets.all(4.0),
                        child: Card(
                          color: Colors.amberAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(e.date.toString()),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList()),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: builder)
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
