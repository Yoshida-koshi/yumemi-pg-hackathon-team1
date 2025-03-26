import 'package:flutter/material.dart';
import 'koumoku.dart';
import 'mappin.dart';

//習慣化項目作成
class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  State<settingPage> createState() => _createPageState();
}
class _createPageState extends State<settingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => koumokuPage()));
                  },
                  child: Image.asset("images/Vector.png",
                      height: 70,
                      width: 70,
                  color: Colors.grey,),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset("images/delete.png",
                      height: 70,
                      width: 70,
                  color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text("　習慣にすること\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "早起き",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
            ),
            Text("　判定方法\n"),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => mappinPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => mappinPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("　選択なし",
                              style: TextStyle(color: Colors.grey),
                              ),
                              Image.asset("images/Vector 3.png",
                              color: Colors.grey,
                              height: 20,
                              width: 20,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("\n\n　時間"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "9:00",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text("\n　通知"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset("images/toggleoff.png",
                      height: 70,
                      width: 70),
                ),
                Container(
                  height: 20,
                  width: 20,
                ),
                Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "9:00",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                ),
              ],
            ),
            Text("\n　金額\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "　選択なし",
                          style: TextStyle(color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset("images/Vector 3.png",
                                  color: Colors.grey,
                                  height: 20,
                                  width: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text("\n　決済方法\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "　選択なし",
                            style: TextStyle(color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset("images/Vector 3.png",
                                  color: Colors.grey,
                                  height: 20,
                                  width: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => koumokuPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(314, 63),
                backgroundColor: Colors.amber,
              ),
              child: Text("作成",
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20
                ),
              ),
            ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}