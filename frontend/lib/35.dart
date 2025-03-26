import 'package:flutter/material.dart';
import 'koumoku.dart';

//課金済みページ
class resultPage extends StatefulWidget {
  const resultPage({Key? key}) : super(key: key);

  @override
  State<resultPage> createState() => _createPageState();
}

class _createPageState extends State<resultPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("メッセージ",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20
            ),),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => koumokuPage()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.amber
              ),
              child: Text("戻る",
                style: TextStyle(
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
