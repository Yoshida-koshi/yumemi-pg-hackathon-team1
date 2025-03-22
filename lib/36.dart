import 'package:flutter/material.dart';
import 'koumoku.dart';

class errorPage extends StatefulWidget {
  const errorPage({Key? key}) : super(key: key);

  @override
  State<errorPage> createState() => _createPageState();
}

class _createPageState extends State<errorPage>{
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
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.white
              ),
              child: Text("再度読み込む",
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
              child: Text("一覧に戻る",
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