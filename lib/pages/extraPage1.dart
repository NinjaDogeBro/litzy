import "package:flutter/material.dart";

class ExtraPage1 extends StatelessWidget {
  const ExtraPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0), // Add horizontal padding
          child: Container(
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
              'Well, I thought it would be something quirky, and I always wanted to make an app for you, so I can give you that "ERRMM Computer Science nerd" vibes 🤣\n\nMidway making this app, I thought Oh my god, this might actually be dumb, Considering the face that this is my first completed app (I did make partial apps before but never finished them and they were basic) so I had to rely on YouTube, websites, and other resources 🙏🙏',
              style: TextStyle(fontSize: 16,),
            ),
          ),
        ),
      ),
    );
  }
}

