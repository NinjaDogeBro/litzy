import 'package:flutter/material.dart';
import 'package:litzy/components/bottom_nav_bar.dart';
import 'package:litzy/pages/sign_page.dart';
import 'package:litzy/pages/zelle_page.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {

  int selectedIndex = 0;

  void navigateBottomBar(int index){
    setState((){
    selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    const signPage(),

    const zellePage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: MyBottomNavBar(
      onTabChange: (index) => navigateBottomBar(index)
    ,),
    body: _pages[selectedIndex],
    );
  }
}