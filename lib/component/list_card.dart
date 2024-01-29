import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_07/component/divider.dart';
//todo list items

class ToDOlistItem extends StatelessWidget {
  final Map<String, dynamic> task;
  final String type;
  final Function onDelete;
  final Function onShift;
  const ToDOlistItem(this.task, this.type,  this.onDelete,this.onShift,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: task['categories'] == 'school'
                  ? Colors.green.withOpacity(.5)
                  : task['categories'] == 'market'
                      ? Colors.deepOrange.withOpacity(.5)
                      : Colors.pink.withOpacity(.6),
              border: Border.all(
                color: task['categories'] == 'school'
                    ? Colors.green
                    : task['categories'] == 'market'
                        ? Colors.deepOrange
                        : Colors.pink,
              ),
              borderRadius: BorderRadius.circular(360),
            ),
            child: task['categories'] == 'school'
                ? Icon(
                    Icons.school,
                    color: Colors.green.shade700,
                    size: 35,
                  )
                : task['categories'] == 'market'
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
          trailing: PopupMenuButton<String>(
            onSelected: (value) {
              // Handle menu item selection here
              if (value == 'view') {
                log('View item Clicked');
              } else if (value == 'edit') {
                log('edit item Clicked');
              } else if (value == 'delete') {
                onDelete();
                log('delete item Clicked');
              } else if (value == 'markComplete') {
                onShift();
                log('Mark as completed item Clicked');
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'view',
                child: ListTile(
                  leading: Icon(Icons.visibility),
                  title: Text('View'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'edit',
                child: ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'delete',
                child: ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Delete'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'markComplete',
                child: ListTile(
                  leading: const Icon(Icons.check),
                  title: Text(type == "completed"
                      ? 'Mark as Uncomplete'
                      : 'Mark as Completed'),
                ),
              ),
            ],
            icon: const Icon(Icons.more_vert),
          ),
          title: Text(
            task['title'],
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          isThreeLine: true,
          subtitle: Text(
            task['description'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const DividerLine(),
      ],
    );
  }
}
