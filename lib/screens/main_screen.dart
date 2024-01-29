import 'package:flutter/material.dart';
import 'package:project_07/component/list_card.dart';
import 'package:project_07/screens/form_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  List<Map<String, dynamic>> completedTasks = [
    {
      "categories": "school",
      "title": "Flutter-7-days",
      "description": "Learn Flutter in 7 days.",
    },
    {
      "categories": "market",
      "title": "App Store Market",
      "description": "Install app from here.",
    },
    {
      "categories": "sports",
      "title": "Football Match",
      "description": "Football match on friday in stadium.",
    }
  ];
  List<Map<String, dynamic>> uncompletedTasks = [
    {
      "categories": "school",
      "title": "Flutter-7-days",
      "description": "Learn Flutter in 7 days.",
    },
    {
      "categories": "market",
      "title": "App Store Market",
      "description": "Install app from here.",
    },
    {
      "categories": "sports",
      "title": "Football Match",
      "description": "Football match on friday in stadium.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: appBar('TODO-LIST'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            textMethod('Uncompleted'),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade200,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  for (var i = 0; i < uncompletedTasks.length; i++)
                    Column(
                      children: [
                        ToDOlistItem(uncompletedTasks[i], "uncompleted", () {
                          setState(() {
                            uncompletedTasks.removeAt(i);
                          });
                        }, () {
                          setState(() {
                            var temp = uncompletedTasks[i];
                            uncompletedTasks.removeAt(i);
                            completedTasks.add(temp);
                          });
                        }),
                      ],
                    )
                ],
              ),
            ),
            textMethod('Completed'),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade200,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  for (var i = 0; i < completedTasks.length; i++)
                    Column(
                      children: [
                        ToDOlistItem(completedTasks[i], "completed", () {
                          setState(() {
                            completedTasks.removeAt(i);
                          });
                        }, () {
                          setState(() {
                            var temp = completedTasks[i];
                            completedTasks.removeAt(i);
                            uncompletedTasks.add(temp);
                          });
                        }),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton(context),
    );
  }

//one text method
  Padding textMethod(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

//floating action button
  FloatingActionButton floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      hoverColor: Colors.deepPurple.shade300,
      elevation: 30,
      backgroundColor: Colors.deepPurple,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FormScreen()),
        );
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

//method of appbar
  AppBar appBar(String title) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
    );
  }
}
