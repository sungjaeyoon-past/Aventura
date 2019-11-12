import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:aventura/area_page/area_info_page.dart';

//todo 추천할 명소들은 context 로 여기 리스트에 넣어주세요.
const List<String> con = ['colosseum', 'gwanghwamun', 'tajmahal'];

class AreaFirstPage extends StatefulWidget {
  @override
  _AreaFirstPageState createState() => _AreaFirstPageState();
}

class _AreaFirstPageState extends State<AreaFirstPage> {
  double _contentOpacity = 0.0; // 명소리스트 밝기 조절.
  double _backgroundOpacity = 0.9; //배경 밝기조절.

  @override
  void initState() {
    super.initState();
    //1.5초후 명소리스트를 보여주도록 설정.
    Timer(Duration(milliseconds: 1500), () {
      if (this.mounted) {
        setState(() {
          _contentOpacity = 1;
          _backgroundOpacity = 0.3;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //배경꽉채게 하기위한 사이즈.
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          //뒷 배경.
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _backgroundOpacity,
            child: Image.asset(
              "images/building.png",
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),

          //Where 텍스트.
          MainText(),

          // 명소 추천 컨텐츠.
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 40),
              child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: _contentOpacity,
                child: Container(
                  width: 300,
                  height: 450,
                  color: Colors.transparent,
                  child: ImageSlider(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//where 텍스트.
class MainText extends StatefulWidget {
  @override
  _MainTextState createState() => _MainTextState();
}

class _MainTextState extends State<MainText>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);

    animation = Tween(begin: 300.0, end: 50.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: animation.value, left: 30, right: 30),
      width: 360,
      child: Text("Where are you going?",
          style: const TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontFamily: "Runda",
            fontStyle: FontStyle.normal,
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

//명소 슬라이드.
class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  //carousel 자식 생성
  static List<Widget> getCarouselChildren(BuildContext context) {
    List<Widget> carouselChildren = [];
    for (int i = 0; i < con.length; i++) {
      var newChild = new GestureDetector(
        onTap: () {
          print(con[i] + "click");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AreaInfo(
                name: con[i],
              ),
            ),
          );
        },
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: ClipRRect(
                  child: Image.asset(
                    'images/' + con[i] + '/image1.jpg',
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    con[i],
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "wooa",
                      color: Colors.black,
                      letterSpacing: 1.3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      carouselChildren.add(newChild);
    }
    return carouselChildren;
  }

  //carousel 위젯.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: getCarouselChildren(context),
        autoplay: true,
        indicatorBgPadding: 1.0,
        dotBgColor: Colors.transparent,
        dotColor: Colors.black,
        dotIncreasedColor: Colors.black,
        dotSize: 6.0,
        autoplayDuration: Duration(milliseconds: 4000),
      ),
    );
  }
}
