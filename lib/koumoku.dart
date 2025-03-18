import 'package:flutter/material.dart';
import '32.dart';

class koumokuPage extends StatefulWidget {
  const koumokuPage({Key? key}) : super(key: key);

  @override
  State<koumokuPage> createState() => _createPageState();
}

class _createPageState extends State<koumokuPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => optionPage()));
              },
              child: Image.asset("images/reordericon.png",
              height: 50,
              width: 62,
              color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}