import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  State<settingPage> createState() => _createPageState();
}
class _createPageState extends State<settingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("項目名"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("* GitHubと連携をして草を生やしたか判定することができます。\n"),
            Text("判定方法\n"),
            Text("時間"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("\n通知"),
            GestureDetector(
              onTap: (){

              },
              child: Image.asset("images/toggleoff.png",
                  height: 70,
                  width: 70),
            ),
            Text("\n金額"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("\n決済方法"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}