import 'package:flutter/material.dart';
import 'package:aventura/service/local_notification_widget.dart';
import 'package:aventura/area_page/area_list_page.dart';
import 'package:aventura/memory_page/memory_first_page.dart';
import 'package:aventura/main_page.dart';
import 'package:aventura/area_page/area_info_page.dart';

main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/info': (context) => AreaInfo(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: <Widget>[
          MemoryFirstPage(),
          MainPage(),
          AreaFirstPage(),
          //아래는 임시 페이지 테스트용임
          LocalNotificationWidget(),
        ],
        controller: PageController(initialPage: 1),
      ),
    );
  }
}
