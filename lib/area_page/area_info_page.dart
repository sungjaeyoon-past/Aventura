import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String curName = "";
//todo DB에서 curName으로 검색해서 상세정보를 가져와야함. initState에서 작업할

class AreaInfo extends StatefulWidget {
  final String name;
  const AreaInfo({Key key, @required this.name}) : super(key: key);
  @override
  _AreaInfoState createState() => _AreaInfoState();
}

class _AreaInfoState extends State<AreaInfo> {
  @override
  void initState() {
    super.initState();
    curName = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff2d1440),
            leading: Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
              ),
            ),
          ),
          body: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff2d1440), width: 25),
              color: const Color(0xffffffff),
            ),
            child: new Column(
              children: <Widget>[
                ImageSlider(),
                MainText(),
                SubText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Container(
        height: size.height / 2,
        width: 400,
        child: Carousel(
          boxFit: BoxFit.fill,
          images: [
            AssetImage('images/' + curName + '/image1.jpg'),
            AssetImage('images/' + curName + '/image2.jpg'),
            AssetImage('images/' + curName + '/image3.jpg'),
          ],
          autoplay: true,
          indicatorBgPadding: 1.0,
          dotBgColor: Colors.transparent,
          dotSize: 6.0,
        ),
      ),
    );
  }
}

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      child: Center(
        child: Text(
          curName,
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Wooa",
          ),
        ),
      ),
    );
  }
}

class SubText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            width: 150,
            //height: 150,
            child: Text(
              //todo 가져온 정보는 여기에 보여준다.
              "콜로세움은 고대 로마 시대의 건축물 가운데 하나로 로마 제국 시대에 만들어진 원형 경기장이다.\n\n 석회암, 응회암, 콘크리트 등으로 지어져 있고, 5만 명의 관중을 수용할 수 있었다. 로마의 중심지에 위치하여 있고, 현재는 로마를 대표하는 유명한 관광지로 탈바꿈하였다. 콜로세움이라는 이름은 근처에 있었던 네로 황제의 동상에서 유래한다. 원래 이름은 플라비우스 원형 경기장으로, 서기 72년 베스파시아누스 황제가 착공해 8년 뒤에 아들인 티투스 황제가 완공했다.\n\n 콜로세움은 수 세기 동안 계속 개축되어왔고, 로마 제국의 전성기에는 5만 명에서 8만 명의 관중들을 수용할 수 있었다. 콜로세움에서는 주로 검투사들의 결투가 이루어졌으며, 모의 해전, 동물 사냥, 신화의 재연 등 다양한 행사들이 펼쳐졌다. 다만 중세에 이르러 제국이 쇠퇴하고 로마가 폐허로 변하자, 콜로세움도 이와 같은 변화를 피하지 못하고 채석장, 요새, 교회와 같은 용도로 사용되었다. 콜로세움은 강도, 약탈, 채석과 같은 파괴 행위로 상당 부분이 손상을 입었으나, 여전히 로마의 상징과 같이 여겨지고 있다. 로마에서 가장 인기있는 관광지 중 하나이며 2018년에는 480만 명의 관광객들을 끌어들였다. 콜로세움은 이탈리아에서 사용되는 5센트 유로화 동전에도 새겨져 있다.",
              style: TextStyle(
                height: 1.3,
                letterSpacing: 1.0,
                fontSize: 20,
                fontFamily: "Wooa",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
