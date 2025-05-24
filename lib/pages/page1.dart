import "package:flutter/material.dart";

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0), // Add horizontal padding
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                  ],
                ),
                child: Text(
                  'So you probably wondered why this monkey made an app for you...',
                  style: TextStyle(fontSize: 16),
                ),
                ),
              const SizedBox(height: 20),
              Image.asset('lib/images/gizmo.jpg', height: 350,),
            ],
          ),
        ),
      ),
    );
  }
}