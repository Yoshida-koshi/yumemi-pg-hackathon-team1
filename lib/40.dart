import 'package:flutter/material.dart';
import '52.dart';

class createPage extends StatefulWidget {
  const createPage({Key? key}) : super(key: key);

  @override
  State<createPage> createState() => _createPageState();
}

class _createPageState extends State<createPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("メールアドレス"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("パスワード"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("パスワード再入力"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => donePage()));
                },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(314, 63),
                        backgroundColor: Colors.white
                    ),
                child: Text("新規作成",
                style: TextStyle(
                    color: Colors.black
                ),
                ),
            ),
    ],),
          ],
        ),
      ),
    );
  }
}