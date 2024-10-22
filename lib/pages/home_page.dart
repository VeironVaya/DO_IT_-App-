// ignore_for_file: prefer_const_constructors

import 'package:first_app/util/dialog_box.dart';
import 'package:first_app/util/do_it_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //save act funtion
  void saveAct() {
    setState(() {
      Activity.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
  }

  // text controller
  final _controller = TextEditingController();

  //Activity List
  List Activity = [
    ["Belajar Flutter", true],
    ["Bikin Video Motivasi", false]
  ];
  //checkboxfuntion
  void checkBoxBehav(bool? value, int index) {
    setState(() {
      Activity[index][1] = !Activity[index][1];
    });
  }

  //create New activity function
  void createNewAct() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveAct,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 41, 41, 41),
          title: Center(
              child: Text(
            "DO IT",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.orange),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewAct,
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: ListView.builder(
          itemCount: Activity.length,
          itemBuilder: (context, index) {
            return DoItTile(
                actName: Activity[index][0],
                actStatus: Activity[index][1],
                onChanged: (value) => checkBoxBehav(value, index));
          },
        ));
  }
}
