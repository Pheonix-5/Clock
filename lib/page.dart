
import 'clock.dart';
import 'setting.dart';
import 'stopwatch.dart';
import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _homeState();
}

class _homeState extends State<page> {

  int currentTab = 0;
  final List<Widget> screens =[
    const clock(),
    const settings(),
    const stopwatch(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const clock();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white12,
            Colors.white38,
          ],),),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.settings),
          onPressed: () {
            setState(() {
              currentScreen = const settings();
              currentTab = 2;
            });
          },
          backgroundColor: Colors.white38,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 150,
                      onPressed: () {
                        setState(() {
                          currentScreen = const clock();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.schedule,
                            color: currentTab == 0 ? Colors.white : Colors.grey,
                          ),
                          Text(
                            'Clock',
                            style: TextStyle(
                                color: currentTab == 0 ? Colors.white : Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // right row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 150,
                      onPressed: () {
                        setState(() {
                          currentScreen = const stopwatch();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer,
                            color: currentTab == 3 ? Colors.white : Colors.grey,
                          ),
                          Text(
                            'Stopwatch',
                            style: TextStyle(
                                color: currentTab == 3 ? Colors.white : Colors.grey
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





