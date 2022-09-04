/* 4-1. 画面遷移 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MainPage(), // 最初のページ
        '/subpage': (BuildContext context) => SubPage(),
        '/subpage2': (BuildContext context) => SubPage2() // 次のページ
        // 次のページ
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mainページ"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Main"),
              ElevatedButton(
                // 立体的なボタン
                onPressed: () =>
                    Navigator.of(context).pushNamed("/subpage"), // 次の画面を乗せる
                child: Text("Subページへ"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subページ"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Main"),
              ElevatedButton(
                // 立体的なボタン
                onPressed: () =>
                    Navigator.of(context).pushNamed("/subpage2"), // 次の画面を乗せる
                child: Text("Subページ2へ"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subページ2"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("Sub2")],
          ),
        ),
      ),
    );
  }
}
