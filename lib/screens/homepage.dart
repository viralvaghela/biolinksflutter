import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:biolink/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
            ),
          ),
          Center(
            child: InkWell(
              hoverColor: Colors.blue,
              splashColor: Colors.grey[850],
              focusColor: Colors.blue,
              onTap: () async {
                await launch(Constant.githubHandle);
              },
              child: Container(
                width: 500,
                height: 100,
                child: Card(
                  child: SizedBox(
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 20.0),
                      child: Center(
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.github,
                            size: 45,
                          ),
                          title: Text("My Github"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
