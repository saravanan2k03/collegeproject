// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'package:collegepro/home_screen.dart';
import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.ncbionetwork.org/sites/default/files/course-images/computer-application-validation.jpg"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 30,
          child: Container(
            color: Colors.white,
            height: 200,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Department of CA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => HomeScreen()));
                  },
                  child: Text("Click to Register"),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
