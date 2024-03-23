import 'package:flutter/material.dart';

void main() {
  //runApp 앱을 실행시켜 주세요~~ 라는 거임(MyApp은 메인페이지 임.)
  runApp(const MyApp());
}

//stless를 치고 탭을 누르면 아래와 같은 코드들이 나옴 class 와 extends 사이에는 MyApp 이라고 해줌 위에 main에서 runApp 파라미터로 들어갈
//인자가 MyApp 인듯 const MyApp 저 부분도 써줘야함
class  MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //return 다음에 오는 곳에 실제 코드를 작성하면됨.
    //여기서는 지금 MaterialApp 이 됨

    //child 는 항상 쓸 수 있는게 아니라 child를 쓸 수 있는 위젯이 따로 있음

    //MaterialApp 이라는 위젯 -> 구글이 제공하는 마테리얼 테마를 제공받을 수 있음(구글 스타일의 UI)
    //Cupertino 어쩌구() 위젯 -> 아이폰 스타일 테마
    // 그냥 커스터마이징 -> MaterialApp() 위젯을 써야함

    // 이번 시간은 레이아웃 부터 시작함
    // Scaffold() 위젯 -> 상, 중, 하로 나눠주는 Scaffold() 위젯임

    return MaterialApp(
      //오른쪽 위에 꼴보기 싫은 DEBUG 띠 없어주는 거
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Appbar'),
            backgroundColor: Colors.lightGreen,
          ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //double.infinity -> 박스의 가로 혹은 세로를 꽉차게 주고 싶을때.(부모를 넘지 않음)
              width: double.infinity, height: 150,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              padding: EdgeInsets.all(50),
              //decoration 은 마딩, 패딩 이런거 말고 나머지 보더 같은것들이 다 있음(여러가지 속성들)
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange),
              ),
              child: Text('Okay'),
            ),
          )
        )
    );
  }
}
