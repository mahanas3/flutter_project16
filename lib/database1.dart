import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project16/services/db.dart';

class Database2 extends StatefulWidget {
  const Database2({super.key});

  @override
  State<Database2> createState() => _Database2State();
}

class _Database2State extends State<Database2> {
  final controller1 = TextEditingController();

  final controller2 = TextEditingController();

  final controller3 = TextEditingController();

  Future<void> databaseconnection() async {
    await Db().initDatabase();
    setState(() {});
  }

  @override
  void initState() {
    databaseconnection();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                labelText: 'Name',
                hintText: 'Enter your Name',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller2,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                labelText: 'Age',
                hintText: 'Enter your Age',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller3,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                labelText: 'Mark',
                hintText: 'Enter your Mark',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print(controller1.text);
                print(controller2.text);
                print(controller3.text);
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
