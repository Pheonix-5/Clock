import 'dart:async';
import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';



class clock extends StatefulWidget {
  const clock({Key? key}) : super(key: key);

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {

  @override void initState(){
    Timer.periodic(const Duration(seconds: 1) , (timer) {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Column
        (
        children: [
          Container(
            child:Align(
              child: AnalogClock(
                decoration: const BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.white10,
                        Colors.white10,
                      ],
                    ),
                    shape: BoxShape.circle),
                width: 250.0,
                height: 500,
                isLive: true,
                hourHandColor: Colors.white,
                minuteHandColor: Colors.white,
                showSecondHand: true,
                numberColor: Colors.white70,
                showNumbers: true,
                showAllNumbers: false,
                textScaleFactor: 1.4,
                showTicks: true,
                secondHandColor: Colors.white70,
                showDigitalClock: false,
                useMilitaryTime: false,
                datetime: DateTime.now(),
              ),
            ),
          ),

          Container(
            child: Align(
              child: Text(
                'Indian Standard Time ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                ),

              ),
            ),
          ),

          Container(
            width: 200,
            height: 50,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: DigitalClock(
                    showSeconds: true,
                    isLive:true,
                    digitalClockTextColor: Colors.white,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    datetime: DateTime.now())
            ),
          ),
        ],
      ),

    );


  }
}

