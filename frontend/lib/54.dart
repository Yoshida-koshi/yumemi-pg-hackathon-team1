import 'package:flutter/material.dart';
import '39.dart';

class repassPage extends StatefulWidget {
  const repassPage({Key? key}) : super(key: key);

  @override
  State<repassPage> createState() => _createPageState();
}

class _createPageState extends State<repassPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("新しいパスワード"),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => signupPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(314, 63),
                        backgroundColor: Colors.white
                    ),
                    child: Text("パスワード変更",
                      style: TextStyle(
                          color: Colors.black
                      ),)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
