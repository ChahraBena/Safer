import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediapp/utils/const.dart';
import 'package:mediapp/widgets/card_item2.dart';
import 'package:mediapp/widgets/card_items.dart';
import 'package:mediapp/widgets/card_main.dart';
import 'package:mediapp/widgets/card_section.dart';
import 'package:mediapp/widgets/custom_clipper.dart';

import '../utils/const.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyCustomClipper(clipType: ClipType.bottom),
            child: Container(
              color: Colors.lightBlue[100],
              height: Constants.headerHeight + statusBarHeight,
            ),
          ),
          Positioned(
            right: -45,
            top: -30,
            child: ClipOval(
              child: Container(
                color: Colors.black.withOpacity(0.05),
                height: 220,
                width: 220,
              ),
            ),
          ),

          // BODY
          Padding(
            padding: EdgeInsets.all(Constants.paddingSide),
            child: ListView(
              children: <Widget>[
                // Header - Greetings and Avatar
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Good Morning\nAmelia!",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            color: Constants.textPrimary),
                      ),
                    ),
                    CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/added/old.jpg'))
                  ],
                ),

                SizedBox(height: 50),

                // Main Cards - Heartbeat and Blood Pressure
                Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardMain(
                          image: AssetImage('assets/icons/heartbeat.png'),
                          title: "",
                          value: "Analysis",
                          unit: "Take a test!",
                          color: Colors.white70),
                      CardMain(
                          image: AssetImage('assets/added/warning.png'),
                          title: "",
                          value: "Alerts",
                          unit: "no Warning.",
                          color: Colors.yellowAccent)
                    ],
                  ),
                ),

                // Section Cards - Daily Medication
                SizedBox(height: 25),

                Text(
                  "HEALTH FORUMS",
                  style: TextStyle(
                    color: Constants.textPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Container(
                    height: 125,
                    width: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CardSection(
                          image: AssetImage('assets/icons/capsule.png'),
                          title: "Aortic stenosis",
                          value: "Symptoms & Preventions",
                          unit: "",
                          time: "",
                          isDone: false,
                        ),
                        CardSection(
                          image: AssetImage('assets/icons/syringe.png'),
                          title: "Trulicity",
                          value: "1",
                          unit: "shot",
                          time: "8-9AM",
                          isDone: true,
                        )
                      ],
                    )),
                SizedBox(height: 30),

                // Scheduled Activities
                Text(
                  "DAILY ANALYSIS",
                  style: TextStyle(
                      color: Constants.textPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),

                Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      CardItems(
                        image: Image.asset(
                          'assets/icons/Walking.png',
                        ),
                        title: "Walking",
                        value: "350",
                        unit: "steps",
                        color: Constants.lightBlue,
                        progress: 20,
                      ),
                      CardItems(
                        image: Image.asset(
                          'assets/added/pulsetrack.png',
                        ),
                        title: "Beating",
                        value: "40",
                        unit: "beats/min",
                        color: Constants.lightBlue,
                        progress: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  "CONTACT A CARDIOLOGIST",
                  style: TextStyle(
                    color: Constants.textPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(height: 20),

                Container(
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CardItem2(
                          image: AssetImage(''),
                          title: "Celine",
                          value: "",
                          unit: "0663494687",
                          time: "",
                          isDone: false,
                        ),
                        CardItem2(
                          image: AssetImage(''),
                          title: "Kati",
                          value: "",
                          unit: "0989484847",
                          time: "",
                          isDone: true,
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
