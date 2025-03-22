import 'package:flutter/material.dart';
import 'koumoku.dart';
import 'mappin.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => koumokuPage()));
                  },
                  child: Image.asset("images/Vector.png",
                      height: 70,
                      width: 70),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset("images/delete.png",
                      height: 70,
                      width: 70),
                ),
              ],
            ),
            Text("項目名"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("* GitHubと連携をして草を生やしたか判定することができます。\n"),
            Text("判定方法\n"),
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0x00000000),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => mappinPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("images/Vector 3.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("\n\n時間"),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => koumokuPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(314, 63),
                backgroundColor: Colors.white,
              ),
              child: Text("作成/編集",
                style: TextStyle(
                    color: Colors.black
                ),
              ),
            ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}