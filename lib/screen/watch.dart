import 'dart:math';

import 'package:flutter/material.dart';

class watch extends StatefulWidget {
  const watch({super.key});

  @override
  State<watch> createState() => _watchState();
}

class _watchState extends State<watch> {
  int hour=0,minute=0,second=0;
@override
  void initState() {
    super.initState();
    digitalclock();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(alignment: Alignment.center,
            children: [
              Stack(
                children:
                List.generate(60, (index) => Transform.rotate(
                  angle: index*(pi*2)/60,
                  child: Divider(
                    color: index%5==0?Colors.red:Colors.black,
                    endIndent:MediaQuery.of(context).size.width*0.80,
                    indent: MediaQuery.of(context).size.width*0.15,
                  ),
                ),),
              ),
              Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: second*(pi*2)/60,
                  child: Divider(
                    color: Colors.black,
                    endIndent: MediaQuery.of(context).size.width*0.50,
                    indent: MediaQuery.of(context).size.width*0.25,
                  ),
                ),
              ),
              Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: minute*(pi*2)/60,
                  child: Divider(
                    color: Colors.green,
                    endIndent: MediaQuery.of(context).size.width*0.50,
                    indent: MediaQuery.of(context).size.width*0.25,
                  ),
                ),
              ),
              Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: hour*(pi*2)/12,
                  child: Divider(
                    color: Colors.red,
                    endIndent: MediaQuery.of(context).size.width*0.50,
                    indent: MediaQuery.of(context).size.width*0.30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void digitalclock()
  {
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        hour=DateTime.now().hour;
        minute=DateTime.now().minute;
        second=DateTime.now().second;
      });
      digitalclock();
    });
  }
}
        /*
        SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/image/watch.png"),
              Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: second*(pi*2)/60,
                  child: Divider(
                    color: Colors.white,
                    endIndent: MediaQuery.of(context).size.width*0.50,
                    indent: MediaQuery.of(context).size.width*0.20,
                  ),
                ),
              ),
              Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: minute*(pi*2)/60,
                  child: Divider(
                    color: Colors.green,
                    endIndent: MediaQuery.of(context).size.width*0.50,
                    indent: MediaQuery.of(context).size.width*0.30,
                  ),
                ),
              ),
              Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: hour*(pi*2)/12,
                  child: Divider(
                    color: Colors.red,
                    endIndent: MediaQuery.of(context).size.width*0.50,
                    indent: MediaQuery.of(context).size.width*0.40
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void digitalclock() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        hour = DateTime.now().hour;
        minute = DateTime.now().minute;
        second = DateTime.now().second;

        if (hour > 12) {
          hour = hour - 12;
        }
      });
      digitalclock();
    });
  }
}
*/