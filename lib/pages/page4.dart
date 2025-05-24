import "package:flutter/material.dart";

class Page4 extends StatelessWidget {
  const Page4({super.key});

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
                  "I remember when I first met you, I did find you to be attractive, but I know that what matters to me most is the inside of a person (their personality, not their actual insides 🤣) I thought our conversation was very interesting and it wasn't dry and I wanted to keep you as a friend who I can talk to about Genesys Works and who is in the corporate world☝️🤓, but as you already know, I didn't plan on making any moves on you at the time or in the future because I didn't think it was ethically right to (in the worst wording possible) \"pre-order\", but during our friendship, I grew to like you for the person you are 😛😛😛",
                  style: TextStyle(fontSize: 16,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}