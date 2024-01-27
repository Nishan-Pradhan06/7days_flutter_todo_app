import 'package:flutter/material.dart';
import 'package:project_07/screens/form_screen.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('TODO-LIST'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            textMethod('Uncompleted'),
            Container(
             
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.5),
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: const Icon(
                        Icons.school,
                        size: 45,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                    title: const Text(
                      'This is Title',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    isThreeLine: true,
                    subtitle: const Text(
                      'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(
                      thickness: 2,
                      color: Colors.deepPurple.shade300,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.5),
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: const Icon(
                        Icons.school,
                        size: 45,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                    title: const Text(
                      'This is Title',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    isThreeLine: true,
                    subtitle: const Text(
                      'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
  Text textMethod(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
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
