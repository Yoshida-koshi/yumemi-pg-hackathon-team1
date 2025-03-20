import 'package:flutter/material.dart';

class koumokuPage extends StatefulWidget {
  const koumokuPage({Key? key}) : super(key: key);

  @override
  State<koumokuPage> createState() => _createPageState();
}

class _createPageState extends State<koumokuPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    
                  },
                  child: Image.asset("images/reordericon.png",
                      height: 50,
                      width: 50,
                      color: Colors.black),
                ),
                Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color(0x00000000),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                                ),
                              ),
                    child: Text("項目名",
                    style: TextStyle(fontSize: 25),
                    ),
                  ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0x00000000),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  child: Text("項目名",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
                ),
              ],
            ),
            ),
          Row(
            children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0x00000000),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Text("項目名",
              style: TextStyle(fontSize: 25),
            ),
          ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0x00000000),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: Text("項目名",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(10, 60),
                backgroundColor: Colors.white
            ),
            child: Text("＋",
            style: TextStyle(
                fontSize: 20,
              color: Colors.black
            ),
            ),
          ),
        ],
      ),
    );
  }
}
