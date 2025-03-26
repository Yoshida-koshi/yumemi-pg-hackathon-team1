import 'package:flutter/material.dart';
import 'koumoku.dart';

//写真とできた！ページ
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: Colors.amber,
                      width: 3
                  ),
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/camera.png"),
                  Text("カメラで撮影",
                    style: TextStyle(
                        color: Colors.amber,
                    fontSize: 15),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: Colors.amber,
                      width: 3
                  ),
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/folder.png"),
                  Text("フォルダから選択",
                    style: TextStyle(
                        color: Colors.amber,
                    fontSize: 15),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => koumokuPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(314, 63),
                    backgroundColor: Colors.amber
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("できた！",
                      style: TextStyle(
                          color: Colors.white,
                      fontSize: 15),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
