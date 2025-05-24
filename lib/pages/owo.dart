import "package:flutter/material.dart";
import "package:litzy/pages/extraPage1.dart";
import "package:litzy/pages/page1.dart";
import "package:litzy/pages/page2.dart";
import "package:litzy/pages/page3.dart";
import "package:litzy/pages/page4.dart";
import "package:litzy/pages/page5.dart";
import "package:litzy/pages/page6.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class Owo extends StatefulWidget {
  const Owo({super.key});

  @override
  State<Owo> createState() => _OwoState();
}

class _OwoState extends State<Owo> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 7,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final pages = [Page1(), ExtraPage1(), Page2(), Page3(), Page4(), Page5(), Page6()];
                return pages[index];
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 7,
            effect: JumpingDotEffect(
              dotHeight: 12,
              dotWidth: 12,
              activeDotColor: Color.fromARGB(255, 139, 64, 224),
              dotColor: Color.fromARGB(255, 65, 42, 102),
              spacing: 16,
              verticalOffset: 20,
            ),
          ),
        ],
      ),
    );
  }
}