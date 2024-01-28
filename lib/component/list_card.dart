import 'package:flutter/material.dart';
import 'package:project_07/component/divider.dart';
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
