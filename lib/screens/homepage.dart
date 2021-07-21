import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            "Coding Boy 💻",
            style: const TextStyle(
              fontSize: 45.0,
              fontFamily: 'Agne',
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: SizedBox(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Agne',
                  color: Colors.white,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                        'Talk is cheap,show me the code - Linus Torvalds'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 500,
              child: Card(
                child: SizedBox(
                    child: DefaultTextStyle(
                  style: const TextStyle(fontSize: 20.0),
                  child: Text("Follow me on Github"),
                )),
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    );
  }
}
