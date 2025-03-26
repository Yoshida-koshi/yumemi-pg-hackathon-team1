import 'package:flutter/material.dart';

class optionPage extends StatefulWidget {
  const optionPage({Key? key}) : super(key: key);

  //通知とログアウト
  @override
  State<optionPage> createState() => _createPageState();
}
class _createPageState extends State<optionPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
          Container(
          height: 40,
          width: 40,
          ),
            Text("通知",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 15
            ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Image.asset("images/toggleoff.png",
              height: 70,
              width: 70),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Text("ログアウト",
                style: TextStyle(
                    color: Colors.amber,
                  fontSize: 15
                ),),
            ),
          ],
        ),
      ),
    );
  }
}