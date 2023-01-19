import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var count = 0;
  Color heartColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$count',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
                //count = count + 1;
              },
              child: const Text(
                'سبح',
                style: TextStyle(fontSize: 40),
              ),
            ),
            InkWell(
              child: Icon(Icons.favorite, color: heartColor),
              onTap: () {
                setState(() {
                  if (heartColor == Colors.white) {
                    heartColor = Colors.red;
                  } else {
                    heartColor = Colors.white;
                  }
                });
              },
            ),
            //  Icon(Icons.favorite, color: heartColor),
          ],
        ),
      ),
    );
  }
}
