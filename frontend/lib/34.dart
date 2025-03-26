import 'package:flutter/material.dart';
import '35.dart';
import 'koumoku.dart';

//課金ページ
class paymentPage extends StatefulWidget {
  const paymentPage({Key? key}) : super(key: key);

  @override
  State<paymentPage> createState() => _createPageState();
}

class _createPageState extends State<paymentPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => resultPage()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(314, 63),
                  backgroundColor: Colors.amber
              ),
              child: Text("￥OO 課金する",
                style: TextStyle(
                    color: Colors.white,
                fontSize: 20),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => koumokuPage()));
              },
              child: Text("戻る",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}