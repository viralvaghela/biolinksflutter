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
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
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
            Text(
              "Coding Boy 💻",
              style: const TextStyle(
                  fontSize: 45.0, fontFamily: 'Agne', color: Colors.blue),
            ),
            SizedBox(height: 10),
            Center(
              child: SizedBox(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Agne',
                    color: Colors.white,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('Content Creator'),
                      TypewriterAnimatedText('Bug Hunter'),
                      TypewriterAnimatedText('Flutter Enthusiast'),
                      TypewriterAnimatedText('Bug Hunter'),
                      TypewriterAnimatedText('CSE Student'),
                      TypewriterAnimatedText('Tech Geek'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
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
            ),

            //Twitter
            SizedBox(height: 15),
            Center(
              child: InkWell(
                hoverColor: Colors.blue,
                splashColor: Colors.grey[850],
                focusColor: Colors.blue,
                onTap: () async {
                  await launch(Constant.twitterHandle);
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
                              FontAwesomeIcons.twitter,
                              size: 45,
                            ),
                            title: Text("My Twitter"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Discord

            SizedBox(height: 15),
            Center(
              child: InkWell(
                hoverColor: Colors.blue,
                splashColor: Colors.grey[850],
                focusColor: Colors.blue,
                onTap: () async {
                  await launch(Constant.discord);
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
                              FontAwesomeIcons.discord,
                              size: 45,
                            ),
                            title: Text("Join Discord Server"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Blog

            SizedBox(height: 15),
            Center(
              child: InkWell(
                hoverColor: Colors.blue,
                splashColor: Colors.grey[850],
                focusColor: Colors.blue,
                onTap: () async {
                  await launch(Constant.blog);
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
                              FontAwesomeIcons.blog,
                              size: 45,
                            ),
                            title: Text("Blog"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Porfolio

            SizedBox(height: 15),
            Center(
              child: InkWell(
                hoverColor: Colors.blue,
                splashColor: Colors.grey[850],
                focusColor: Colors.blue,
                onTap: () async {
                  await launch(Constant.portfolio);
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
                              FontAwesomeIcons.code,
                              size: 45,
                            ),
                            title: Text("My Portfolio"),
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
      ),
    );
  }
}
