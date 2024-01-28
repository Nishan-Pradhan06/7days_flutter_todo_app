import 'package:flutter/material.dart';
import 'package:project_07/component/list_card.dart';
import 'package:project_07/screens/form_screen.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('TODO-LIST'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            textMethod('Uncompleted'),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Column(
                children: [
                  ToDOlistItem('school'),
                  ToDOlistItem('market'),
                  ToDOlistItem('sports'),
                ],
              ),
            ),
            textMethod('Completed'),
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