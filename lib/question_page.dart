import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Plutôt"),
            Dismissible(
              background: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ))),
              secondaryBackground: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                      ))),
              key: Key("yolo"),
              child: ListTile(
                leading: Text("Baby"),
                trailing: Text("Flipper"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
