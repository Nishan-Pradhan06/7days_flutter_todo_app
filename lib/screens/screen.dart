import 'package:flutter/material.dart';
import 'package:project_07/screens/form_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'TODO-LIST',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textMethod('Uncompleted'),
            //list tile card
            listTilecard('Creating Todo App',
                'Discover the ultimate task management experience with our Flutter-based Todo app! 📅✨'),
            textMethod('Completed'),
            listTilecard('Completed list',
                'Discover the ultimate task management experience with our Flutter-based Todo app! 📅✨'),
          ],
        ),
      ),
      //floating action button for to create new todo list
      floatingActionButton: floatingActionButton(context),
    );
  }

//container of card
  Container listTilecard(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          list(title, subtitle),
          list(title, subtitle),
        ],
      ),
    );
  }

//list design
  Column list(String title, String subtitle) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(.5),
              border: Border.all(
                  color: Colors.green,
                  strokeAlign: 4,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(360),
            ),
            child: Icon(
              Icons.school,
              size: 40,
              color: Colors.green[700],
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          // isThreeLine: true,
          subtitle: Text(
            subtitle,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            thickness: 3,
            color: Colors.purple.shade300,
          ),
        )
      ],
    );
  }

//text heading
  Padding textMethod(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 4, bottom: 4),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

//floating action button
  FloatingActionButton floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.deepPurple,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FormScreen(),
          ),
        );
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
