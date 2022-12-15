import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        child:
        Container(
          alignment: Alignment(-0.6,-0.8),
          child: Text(
            "CLOCK VERSION 0.1\n \nDeveloped By - Akshay Sharma "
            "\n\n **This Application is Still in beta** "
            "\n\n IF YOU WANT TO CHECK OUT THE CODE OR \n WANT TO HELP ME WITH ITS DEVELOPEMENT\n YOU CAN CHECK OUT MY GITHUB -\n https://github.com/Pheonix-5"
            "\n\nSupport me on linkdin - \nhttps://www.linkedin.com/in/akshay-sharma-b2b4851ba/",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20
            ),
          ),
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              colors: [
                Colors.white10,
                Colors.white10,
              ],
            ),
          ),
          // Container(
          //   child:
          //   const Align(
          //     child: Text(
          //       'This Application is in beta mode\n'
          //           'Created By - Akshay Sharma '
          //           '',
          //       textAlign: TextAlign.right,
          //       style: TextStyle(
          //         color: Colors.white60,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
