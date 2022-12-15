import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class stopwatch extends StatefulWidget {
  const stopwatch({Key? key}) : super(key: key);

  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  late Stopwatch stopwatch;
  late Timer t;

  void handleStartStop() {
    if(stopwatch.isRunning) {
      stopwatch.stop();
    }
    else {
      stopwatch.start();
    }
  }

  String returnFormattedText() {
    var milli = stopwatch.elapsed.inMilliseconds;

    String milliseconds =( (milli % 1000)).toString().padLeft(3, "0");
    String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2, "0");
    String minutes = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");

    return "$minutes:$seconds:$milliseconds";
  }

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();

    t = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CupertinoButton(
                onPressed: () {
                  handleStartStop();
                },
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white10,
                          Colors.white10 ,
                        ],
                      ),
                      shape: BoxShape.circle),
                  height: 250,
                  alignment: Alignment.center,
                  child: Text(returnFormattedText(), style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),

              const SizedBox(height: 15,),

              CupertinoButton(
                onPressed: () {
                  stopwatch.reset();
                },
                padding: const EdgeInsets.all(0),
                child: const Text("Reset", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

