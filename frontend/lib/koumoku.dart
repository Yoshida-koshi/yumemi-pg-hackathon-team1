import 'package:flutter/material.dart';
import '31.dart';
import '32.dart';
import '33.dart';
import '34.dart';
import '37.dart';

//習慣化項目一覧
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => optionPage()));
                  },
                  child: Image.asset("images/Setting.png",
                      height: 50,
                      width: 50,
                      color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.2),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                                ),
                              ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("早起き",
                          style: TextStyle(fontSize: 23,
                          fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("images/time.png"),
                            Text("9:00",
                            style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Text("￥500",
                        style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.2),
                    border: Border.all(
                      color: Colors.white,
                      width: 0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text("早起き",
                    style: TextStyle(fontSize: 23,
                    fontWeight: FontWeight.bold),
                  ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/time.png"),
                          Text("9:00",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Text("￥500",
                        style: TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => check2Page()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber
                        ),
                        child: Text("達成画面へ",
                          style: TextStyle(
                              color: Colors.white,
                          fontSize: 20),
                        ),
                      ),
                  ],
                  ),
                ),
              ],
                ),
              ],
            ),
            ),
          Row(
            children: [
           Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => settingPage()));
                  },
                  child: Image.asset(
                    "images/plusyellow.png",
                    height: 200,
                    width: 200,
                ),
                ),
              ],
            ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0x00000000),
                  border: Border.all(
                    color: Colors.white,
                    width: 0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}