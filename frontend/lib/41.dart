import 'package:flutter/material.dart';
import 'koumoku.dart';
import '42.dart';

//ログインページ
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _createPageState();
}

class _createPageState extends State<loginPage>{
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
            Text("　メールアドレス",
            style:
            TextStyle(fontWeight: FontWeight.bold,
                fontSize: 15
            ),
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
                      hintText: "example@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text("\n　パスワード",
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => koumokuPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(314, 63),
                    backgroundColor: Colors.amber,
                  ),
                  child: Text("サインイン",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
              ),
      ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => forgotPage()));
                  },
                  child: Text("\nパスワードを忘れた"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}