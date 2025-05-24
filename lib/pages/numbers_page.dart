import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:litzy/pages/owo.dart';


class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  String amount = '';

  void onKeyTap(String value) {
    HapticFeedback.lightImpact();

    setState(() {
      if (value == '⌫') {
        if (amount.isNotEmpty) {
          amount = amount.substring(0, amount.length - 1);
        }
      } else if (value == '.' && amount.contains('.')) {
        // prevent multiple dots
        return;
      } else {
        amount += value;
      }
    });
  }

  void onSend() {
    // Handle send logic here
    if (amount == '2521') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const Owo()),
    );
    }
    else{ 
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text('Sending \$${amount.isEmpty ? "0.00" : amount}'),
      ),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    final keys = [
      '1', '2', '3',
      '4', '5', '6',
      '7', '8', '9',
      '.', '0', '⌫',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          children: [
            Text(
              '\$${amount.isEmpty ? '0.00' : amount}',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: GridView.builder(
                itemCount: keys.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (_, index) {
                  final key = keys[index];
                  return ElevatedButton(
                    onPressed: () => onKeyTap(key),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(key, style: const TextStyle(fontSize: 24)),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onSend,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Send", style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}