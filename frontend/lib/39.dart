import 'package:flutter/material.dart';
import '40.dart';
import '41.dart';
import '42.dart';

class signupPage extends StatefulWidget {
  const signupPage({Key? key}) : super(key: key);

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => loginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(314, 63),
                    backgroundColor: Colors.amber
                  ),
                  child: Text("ログイン",
                    style: TextStyle(
                        color: Colors.white),
                  ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => createPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.amber,
                      width: 3
                    ),
                      minimumSize: Size(314, 63),
                      backgroundColor: Colors.white
                  ),
                  child: Text("新規作成",
                  style: TextStyle(
                      color: Colors.amber),
                  ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Text("ゲストログイン",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.amber,
                  fontSize: 17),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => forgotPage()));
                },
                child: Text("パスワードを忘れた",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                  color: Colors.amber
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
