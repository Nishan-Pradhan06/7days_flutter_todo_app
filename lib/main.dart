import 'package:flutter/material.dart';
import 'package:project_07/screens/screen.dart';

void main() {
  runApp(const MyApp());
  //data typoe and varibles
  int data = 5;
  String name = 'nishan';
  double height = 5.6;

  int userId = 6;
  if (userId == 6) {
    debugPrint('UserId is $userId');
    debugPrint('User is a human');
    debugPrint('Name is $name');
    debugPrint('Height is $height');
  } else {
    debugPrint('bot number: $data');
    debugPrint('User is a robot');
  }

  textitems();
}

void textitems() {
  int age = 21;
 debugPrint("age is $age");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
