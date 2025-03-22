import 'package:flutter/material.dart';
import 'koumoku.dart';

class check2Page extends StatefulWidget {
  const check2Page({Key? key}) : super(key: key);

  @override
  State<check2Page> createState() => _createPageState();
}

class _createPageState extends State<check2Page>{
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
              ),
              child: Text("カメラで撮影",
                style: TextStyle(
                    color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
              ),
              child: Text("写真を選択",
                style: TextStyle(
                    color: Colors.black),
              ),
            ),
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