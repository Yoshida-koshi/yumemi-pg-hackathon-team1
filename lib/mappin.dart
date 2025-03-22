import 'package:flutter/material.dart';

class mappinPage extends StatefulWidget {
  const mappinPage({Key? key}) : super(key: key);

  @override
  State<mappinPage> createState() => _createPageState();
}
class _createPageState extends State<mappinPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(314, 63),
                backgroundColor: Colors.white,
              ),
              child: Text("決定",
                style: TextStyle(
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}