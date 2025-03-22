import 'package:flutter/material.dart';

class optionPage extends StatefulWidget {
  const optionPage({Key? key}) : super(key: key);

  @override
  State<optionPage> createState() => _createPageState();
}
class _createPageState extends State<optionPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("通知"),
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
              child: Text("ログアウト"),
            ),
          ],
        ),
      ),
    );
  }
}