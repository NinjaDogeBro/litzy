import "package:flutter/material.dart";

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                child: const Text(
                  "But besides that... I really wanted to let you know that you really are special to me, you aren't like any other woman, you're funny asf, quirky as I am (you match my freak 😛😛😛), esas movida y te pones las pilas, and I know that you've had some hardships but like I said, you get back up. You're inspiring, and your aspirations and goals are what attracted me to you. ",
                  style: TextStyle(fontSize: 16,),
                ),
              ),
              const SizedBox(height: 20,),
              Image.asset('lib/images/miniSack.jpg', height: 200,),
            ],
          ),
        ),
      ),
    );
  }
}