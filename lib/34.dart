import 'package:flutter/material.dart';
import '35.dart';

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
                  backgroundColor: Colors.white
              ),
              child: Text("￥OO 課金する",
                style: TextStyle(
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}