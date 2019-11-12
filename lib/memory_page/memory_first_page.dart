import 'package:flutter/material.dart';

class MemoryFirstPage extends StatefulWidget {
  @override
  _MemoryFirstPageState createState() => _MemoryFirstPageState();
}

class _MemoryFirstPageState extends State<MemoryFirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new PreferredSize(
        preferredSize: new Size(MediaQuery.of(context).size.width, 150.0),
        child: new Container(
          padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: new Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
            child: Row(
              children: <Widget>[
                Image.asset("images/instagram.png"),
                Text("  Memory",
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Multilingual_Hand",
                        fontStyle: FontStyle.normal,
                        fontSize: 25.0),
                    textAlign: TextAlign.left),
              ],
            ),
          ),
          decoration: new BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff4527a0), Color(0xff7b1fa2)], stops: [0, 1]),
            boxShadow: [
              BoxShadow(
                  color: Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 0),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("사진"),
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("title"),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("사진"),
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("title"),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("사진"),
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("title"),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("사진"),
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff707070), width: 1),
                    color: const Color(0xffffffff),
                  ),
                  child: Text("title"),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
