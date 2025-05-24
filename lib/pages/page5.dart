import "package:flutter/material.dart";

class Page5 extends StatelessWidget {
  const Page5({super.key});

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
                  "It wasn't until I talked to a couple of my friends for advice and my goated co-worker slapped me with the question, \"Let's say in 3-5 years, if you look back on this, would you regret not making any moves on her?\" and I said ...yeah I would regret that I would have never made a move on you. So I did break my feelings to you and I felt very excited and scared (internally), then you said you only saw me as a friend 😦... Then you basically said CHAT CLIP THAT and said you felt the same way back 🤣🤣🤣 then the rest is history.",
                  style: TextStyle(fontSize: 16,),
                ),
              ),
              const SizedBox(height: 20,),
              Image.asset('lib/images/cat.jpg', height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}