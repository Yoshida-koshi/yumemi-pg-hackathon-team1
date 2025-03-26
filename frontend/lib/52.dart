import 'package:flutter/material.dart';
import 'koumoku.dart';

//アカウント作成完了
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
            Text("アカウント作成が完了しました。",
            style: TextStyle(color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20)
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => koumokuPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(314, 63),
                    backgroundColor: Colors.amber
                ),
                child: Text("始める",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
