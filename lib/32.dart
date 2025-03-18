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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){

              },
              child: Image.asset("images/toggleon.png",
              height: 70,
              width: 70),
            ),
          ],
        ),
      ),
    );
  }
}