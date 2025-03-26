import 'package:flutter/material.dart';
import 'main.dart';

//パスワード変更
class repassPage extends StatefulWidget {
  const repassPage({Key? key}) : super(key: key);

  @override
  State<repassPage> createState() => _createPageState();
}

class _createPageState extends State<repassPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
            ),
            Text("　新しいパスワード\n",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Text("\n　パスワード再入力\n",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyHomePage(title: '',)));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(314, 63),
                        backgroundColor: Colors.amber
                    ),
                    child: Text("パスワード変更",
                      style: TextStyle(
                          color: Colors.white
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