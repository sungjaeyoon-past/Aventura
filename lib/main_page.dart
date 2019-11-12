import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Image.asset(
          "images/main.png",
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Column(
            children: <Widget>[
              SettingButton(),
              CurrentTime(),
              SizedBox(height: size.height / 3),
              LocationInfo(),
              WeatherInfo(),
            ],
          ),
          //CurrentTime(),
        ),
      ],
    );
  }
}

//todo-버튼클릭 이벤트 설정
class SettingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(0.9, 0.0),
        child: Image.asset(
          "images/setting.png",
        ));
  }
}

class CurrentTime extends StatefulWidget {
  @override
  _CurrentTimeState createState() => _CurrentTimeState();
}

//todo - setting 구현

//todo - 시간 동작하게 구현
class _CurrentTimeState extends State<CurrentTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.5, 0.0),
      child: Text("12 : 00 AM",
          style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w400,
              fontFamily: "Multilingual_Hand",
              fontStyle: FontStyle.normal,
              fontSize: 60.0),
          textAlign: TextAlign.left),
    );
  }
}

//todo-위치보여주도록
class LocationInfo extends StatefulWidget {
  @override
  _LocationInfoState createState() => _LocationInfoState();
}

class _LocationInfoState extends State<LocationInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.7, 1.0),
      child: Text("We're in San Francisco",
          style: const TextStyle(
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w400,
              fontFamily: "Multilingual_Hand",
              fontStyle: FontStyle.normal,
              fontSize: 30.0),
          textAlign: TextAlign.left),
    );
  }
}

//todo-날씨에 따라 텍스트, 아이콘 변경
class WeatherInfo extends StatefulWidget {
  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      child: Text("Sunny Here ☀",
          style: const TextStyle(
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w400,
              fontFamily: "Multilingual_Hand",
              fontStyle: FontStyle.normal,
              fontSize: 45.0),
          textAlign: TextAlign.left),
    );
  }
}
