import 'package:flutter/material.dart';
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

//divider line  between two widgets
class DividerLine extends StatelessWidget {
  const DividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Divider(
        thickness: 2,
        color: Colors.deepPurple.shade300,
      ),
    );
  }
}

//todo list items
class ToDOlistItem extends StatelessWidget {
  final String categoryName;
  const ToDOlistItem(this.categoryName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: categoryName == 'school'
                  ? Colors.green.withOpacity(.5)
                  : categoryName == 'market'
                      ? Colors.deepOrange.withOpacity(.5)
                      : Colors.pink.withOpacity(.5),
              border: Border.all(
                color: categoryName == 'school'
                    ? Colors.green
                    : categoryName == 'market'
                        ? Colors.deepOrange
                        : Colors.pink,
              ),
              borderRadius: BorderRadius.circular(360),
            ),
            child: categoryName == 'school'
                ? Icon(
                    Icons.school,
                    color: Colors.green.shade700,
                    size: 35,
                  )
                : categoryName == 'market'
                    ? Icon(
                        Icons.shopping_cart,
                        color: Colors.orange.shade900,
                        size: 35,
                      )
                    : Icon(
                        Icons.sports_basketball_sharp,
                        color: Colors.pink.shade900,
                        size: 35,
                      ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          title: const Text(
            'This is Title',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          isThreeLine: true,
          subtitle: const Text(
            'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const DividerLine(),
      ],
    );
  }
}
