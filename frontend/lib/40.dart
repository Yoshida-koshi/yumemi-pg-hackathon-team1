import 'package:flutter/material.dart';
import '52.dart';

//新規作成ページ
class createPage extends StatefulWidget {
  const createPage({Key? key}) : super(key: key);

  @override
  State<createPage> createState() => _createPageState();
}

class _createPageState extends State<createPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 30,
            ),
            Text("　メールアドレス",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),
            ),
            Container(
              height: 15,
              width: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text("　パスワード",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
            Container(
              height: 15,
              width: 15,
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
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text("　パスワード再入力",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
            Container(
              height: 15,
              width: 15,
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
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 15,
              width: 15,
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
                        backgroundColor: Colors.amber
                    ),
                child: Text("新規作成",
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20
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