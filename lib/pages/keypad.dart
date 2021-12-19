import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  const Keypad({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2b2f38),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1584119164246-461d43e9bab3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
            Expanded(
              child: Center(
                child: Text("Keypad"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Color(0xff067ae6),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Keypad"),),
    );
  }
}