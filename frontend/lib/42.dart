import 'package:flutter/material.dart';
import '54.dart';

//パスワード再発行
class forgotPage extends StatefulWidget {
  const forgotPage({Key? key}) : super(key: key);

  @override
  State<forgotPage> createState() => _createPageState();
}

class _createPageState extends State<forgotPage>{
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
            Text("　メールアドレス\n",
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
                      hintText: "example@gmail.com",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => repassPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(314, 63),
                        backgroundColor: Colors.amber
                    ),
                    child: Text("パスワード再発行",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
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