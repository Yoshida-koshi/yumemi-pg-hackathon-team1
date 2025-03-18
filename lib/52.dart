import 'package:flutter/material.dart';
import 'koumoku.dart';

class donePage extends StatefulWidget {
  const donePage({Key? key}) : super(key: key);

  @override
  State<donePage> createState() => _createPageState();
}

class _createPageState extends State<donePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("アカウント作成が完了しました"),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => koumokuPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(314, 63),
                    backgroundColor: Colors.white
                ),
                child: Text("はじめる")
            ),
          ],
        ),
      ),
    );
  }
}