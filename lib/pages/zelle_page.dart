import "package:flutter/material.dart";

class zellePage extends StatelessWidget {
  const zellePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            Image.asset('lib/images/homeless.png', height: 180,),
            Text("Pay me"),
          ],
        ),
      ),
    );
  }
}