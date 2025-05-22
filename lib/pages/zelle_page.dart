import "package:flutter/material.dart";
import 'package:litzy/pages/numbers_page.dart';

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
            const SizedBox(height: 40,),
            //Button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumbersPage()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 47, 134, 20),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 300,
                padding: const EdgeInsets.all(25),
                child: const Center(child: Text("Pay me", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16), )),
              ),
            )
          ],

        ),
        
      ),
      
    );
  }
}