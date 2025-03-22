import 'package:flutter/material.dart';
import 'koumoku.dart';

class checkPage extends StatefulWidget {
  const checkPage({Key? key}) : super(key: key);

  @override
  State<checkPage> createState() => _createPageState();
}

class _createPageState extends State<checkPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => koumokuPage()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.white
              ),
              child: Text("できた！",
                style: TextStyle(
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}