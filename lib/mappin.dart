import 'package:flutter/material.dart';
import '31.dart';

class mappinPage extends StatefulWidget {
  const mappinPage({Key? key}) : super(key: key);

  @override
  State<mappinPage> createState() => _createPageState();
}
class _createPageState extends State<mappinPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => settingPage()));
                  },
                  child: Image.asset("images/Vector.png",
                  height: 70,
                      width: 70),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(314, 63),
                backgroundColor: Colors.white,
              ),
              child: Text("決定",
                style: TextStyle(
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}