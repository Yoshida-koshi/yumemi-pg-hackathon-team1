import 'package:flutter/material.dart';
import '40.dart';
import '41.dart';
import '42.dart';
import 'koumoku.dart';

//タイトル画面
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ハッカソンUI',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ハッカソンUI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("習慣の達人\n",
              style: TextStyle(fontSize: 45,
              fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => loginPage()));
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
              Container(
                width: 15,
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => createPage()));
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
              Container(
                width: 15,
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => koumokuPage()));
                },
                child: Text("ゲストログイン",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      fontSize: 17),
                ),
              ),
              Container(
                width: 15,
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => forgotPage()));
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