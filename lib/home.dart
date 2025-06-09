import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is HomePage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Welcome to My App',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'This is a simple page with text only.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'No buttons, no images — just clean Flutter text.',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  /*@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 594,
                child: Container(
                  width: 343,
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 150,
                    bottom: 16,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '排名',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          height: 0.10,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF7F7F7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage("https://picsum.photos/32/32"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              's11365',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                height: 0.10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              's11365@gmail.com',
                                              style: TextStyle(
                                                color: Color(0xFF828282),
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF7F7F7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage("https://picsum.photos/32/32"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              's11388',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                height: 0.10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              's11388@gmail.com',
                                              style: TextStyle(
                                                color: Color(0xFF828282),
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF7F7F7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage("https://picsum.photos/32/32"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              'Carlo Emilion',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                height: 0.10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              'email@fakedomain.net',
                                              style: TextStyle(
                                                color: Color(0xFF828282),
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF7F7F7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage("https://picsum.photos/32/32"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              'Daniel Jay Park',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                height: 0.10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              'djpark@gmail.com',
                                              style: TextStyle(
                                                color: Color(0xFF828282),
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF7F7F7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage("https://picsum.photos/32/32"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              'Mark Rojas',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                height: 0.10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 267,
                                            child: Text(
                                              'rojasmar@skiff.com',
                                              style: TextStyle(
                                                color: Color(0xFF828282),
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 44,
                child: Container(
                  width: 375,
                  height: 56,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 335,
                        top: 16,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://picsum.photos/24/24"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 89,
                        top: 14,
                        child: Text(
                          '喝水紀錄',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            height: 0.03,
                            letterSpacing: -0.96,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Container(
                          width: 24,
                          height: 24,
                          padding: const EdgeInsets.symmetric(horizontal: 3.10, vertical: 5.10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4.20),
                              const SizedBox(height: 4.20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 300,
                child: Container(
                  width: 343,
                  height: 282,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 64,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                '25',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 36,
                              child: Text(
                                '20',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 72,
                              child: Text(
                                '15',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 108,
                              child: Text(
                                '10',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 144,
                              child: Text(
                                '5',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 244,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Nov 23',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 294,
                              top: 0,
                              child: Text(
                                '30',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 255,
                              top: 0,
                              child: Text(
                                '29',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 216,
                              top: 0,
                              child: Text(
                                '28',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 178,
                              top: 0,
                              child: Text(
                                '27',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 139,
                              top: 0,
                              child: Text(
                                '26',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              top: 0,
                              child: Text(
                                '25',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 61,
                              top: 0,
                              child: Text(
                                '24',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  height: 0.14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 83,
                        child: Container(
                          width: 301,
                          height: 157,
                          child: Stack(children: [
                          ,
                          ]),
                        ),
                      ),
                      Positioned(
                        left: 302,
                        top: 68,
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.10,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: ShapeDecoration(
                                      gradient: RadialGradient(
                                        center: Alignment(0, 1),
                                        radius: 0,
                                        colors: [Color(0xFF2D6EFF), Color(0x002D6EFF)],
                                      ),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 11,
                                top: 11,
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF2D6EFF),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Text(
                          '11月喝水紀錄表',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            height: 0.10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 168,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 224,
                        padding: const EdgeInsets.all(16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10月總次數',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                height: 0.10,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '18次',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: 'Inter',
                                height: 0.04,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '自學期開始次數上升了20% ',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                height: 0.12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 224,
                        padding: const EdgeInsets.all(16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '11月總次數',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                height: 0.10,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '22次',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: 'Inter',
                                height: 0.04,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '自上個月以來增加33%',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                height: 0.12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 224,
                        padding: const EdgeInsets.all(16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MAU (Monthly Active Users)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                height: 0.10,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '10,353',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: 'Inter',
                                height: 0.04,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '-8% month over month',
                              style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                height: 0.12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 12,
                    left: 21,
                    right: 14.67,
                    bottom: 11,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.only(
                            top: 5.17,
                            left: 12.45,
                            right: 13.12,
                            bottom: 4.74,
                          ),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            ,
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 218.67),
                      Container(
                        width: 66.66,
                        height: 11.34,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 42.33,
                              top: 0,
                              child: Container(
                                width: 24.33,
                                height: 11.33,
                                child: Stack(children: [
                                ,
                                ]),
                              ),
                            ),
                            Positioned(
                              left: 22.03,
                              top: 0,
                              child: Container(
                                width: 15.27,
                                height: 10.97,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://picsum.photos/15/11"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0.34,
                              child: Container(
                                width: 17,
                                height: 10.67,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://picsum.photos/17/11"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 740,
                child: Container(
                  width: 375,
                  height: 78,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.only(
                      left: BorderSide(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE6E6E6),
                      ),
                      top: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE6E6E6),
                      ),
                      right: BorderSide(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE6E6E6),
                      ),
                      bottom: BorderSide(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE6E6E6),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 0,
                        offset: Offset(0, -0.50),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 44,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 149,
                                top: 2,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                    left: 26,
                                    right: 26,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        padding: const EdgeInsets.only(
                                          top: 2.95,
                                          left: 3,
                                          right: 3,
                                          bottom: 3.95,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                          ,
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 225,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.30,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 12,
                                      left: 26,
                                      right: 26,
                                      bottom: 8,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 76,
                                top: 2,
                                child: Container(
                                  width: 67,
                                  height: 43,
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                    left: 26,
                                    right: 26,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 296,
                                top: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                    left: 26,
                                    right: 26,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://picsum.photos/24/24"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 225,
                                top: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                    left: 26,
                                    right: 26,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        padding: const EdgeInsets.only(
                                          top: 0.25,
                                          left: 2.37,
                                          right: 2.37,
                                          bottom: 1.75,
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                          ,
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 44,
                        child: Container(
                          width: 375,
                          height: 34,
                          padding: const EdgeInsets.only(
                            top: 21,
                            left: 121,
                            right: 120,
                            bottom: 8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 134,
                                height: 5,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 1,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 26,
                            right: 26,
                            bottom: 8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2.10),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 19.80,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage("https://picsum.photos/18/20"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1.80,
                                            strokeAlign: BorderSide.strokeAlignCenter,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}*/