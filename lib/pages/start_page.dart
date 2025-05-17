import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class start_page extends StatelessWidget {
  const start_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 51, 47),
        body: Center(
          child: Column(
          children: [
            //Padding
            const SizedBox(height: 50,),
            //Dog pic
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset('lib/images/dog.png', height: 180,),
            ),
            
            const SizedBox(height: 20,),

            //Title
            Text(
              'Hello Litzy 😏',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              ),

            const SizedBox(height: 20,),

            //Button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => secondPage(),
                 ),
                 ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 194, 34, 22),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 300,
                padding: EdgeInsets.all(25),
                child: Center(child: const Text("Start", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16), )),  ),
            ),
          ],
        )
      ),
    );
  }
}