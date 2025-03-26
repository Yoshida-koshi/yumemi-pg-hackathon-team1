import 'package:flutter/material.dart';
import 'koumoku.dart';

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

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("メールアドレス"),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text("\nパスワード"),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
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
          ],
        ),
      ),
    );
  }
}
