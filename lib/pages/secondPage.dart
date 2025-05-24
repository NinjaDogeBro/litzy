import 'package:flutter/material.dart';
import 'package:litzy/components/bottom_nav_bar.dart';
import 'package:litzy/pages/gato_page.dart';
import 'package:litzy/pages/zelle_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedIndex = 0;
  bool unlocked = false;
  int tapCount = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    const gatoPage(),
    const zellePage(),
  ];

  void unlock() {
    setState(() {
      unlocked = true;
    });
  }

  void handleTap() {
    setState(() {
      tapCount++;
      if (tapCount >= 10) {
        unlocked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!unlocked) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: handleTap,
                child: const Text(
                  "nothing",
                  style: TextStyle(fontSize: 32,),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[selectedIndex],
    );
  }
}