import 'package:flutter/material.dart';
import '54.dart';

class forgotPage extends StatefulWidget {
  const forgotPage({Key? key}) : super(key: key);

  @override
  State<forgotPage> createState() => _createPageState();
}

class _createPageState extends State<forgotPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("メールアドレス"),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => repassPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(314, 63),
                        backgroundColor: Colors.white
                    ),
                    child: Text("パスワード再発行",
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