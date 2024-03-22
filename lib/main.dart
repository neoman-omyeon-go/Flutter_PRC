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
          //상단
          appBar: AppBar(
            title: Text('Appbar'),
            backgroundColor: Colors.lightGreen,
          ),
          //중단
          body: Text('안녕'),
          //하단
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          ),
        )
    );
  }
}

// home: Scaffold(
//Row 는 가로 방향으로 여러개 쓸 수 있게 만들어주는 위젯이다. 메인 디렉션(방향)은 가로이다. -> child 대신, children [ ] 딕셔너리 구조를 사용한다.
// body: Column(
//   //Center 위젯말고도 정렬하는 방법이 있다. Row 나 Column 안에 mainAxisAlignment: MainAxisAlignment.center/spaceEvenly 이렇게 쓸 수 있다.
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //메인 축의 부축(정축 -> main, 부축 -> cross| Row의 정축 -> 가로, 부축 -> 세로 | Columndml 정축 -> 세로, 부축 -> 가로)
//   crossAxisAlignment: CrossAxisAlignment.stretch,
//   children: [
//     Icon(Icons.star),
//     Icon(Icons.stacked_bar_chart),
//     Icon(Icons.stacked_bar_chart_sharp)
//   ],
// ),
// body: Column(
//   // //Row 와 다르게 Column 위젯은 메인 디렉션(방향) 이 세로이다.
//   // children: [
//   //       Icon(Icons.star),
//   //       Icon(Icons.stacked_bar_chart),
//   //       Icon(Icons.stacked_bar_chart_sharp)
//   // ],
// ),
// ),