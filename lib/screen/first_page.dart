import 'package:flutter/material.dart';

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  int hour = 0, minutes = 0, second = 0, day = 0, month = 0, year = 0,week=0;

  @override
  void initState() {
    super.initState();
    digitalclock();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Clock"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.60,
                width: MediaQuery.of(context).size.width * 0.60,
                child: CircularProgressIndicator(
                  value: hour / 12,
                  strokeWidth: 10,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.55,
                width: MediaQuery.of(context).size.width * 0.55,
                child: CircularProgressIndicator(
                  value: minutes / 60,
                  strokeWidth: 10,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.50,
                width: MediaQuery.of(context).size.width * 0.50,
                child: CircularProgressIndicator(
                  value: second / 60,
                  strokeWidth: 10,
                  color: Colors.green,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$week",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$day - $month - $year',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$hour - $minutes - $second",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ],
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
        minutes = DateTime.now().minute;
        second = DateTime.now().second;
        week = DateTime.now().weekday;
        day = DateTime.now().day;
        month = DateTime.now().month;
        year = DateTime.now().year;

        if (hour > 12) {
          hour = hour - 12;
        }
      });
      digitalclock();
    });
  }
}

/*
 drawer: Drawer(
          child: Column(
            children: [
              Container(
                child: Padding(padding: EdgeInsets.all(10),),
              ),
              CircleAvatar(
                radius: 100,
                child: Image.asset("assets/image/user.png",),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.email_outlined),
                    Text(" Email "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text(" Account Name "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.home),
                    Text(" Home "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    Text(" Settings "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.more_horiz),
                    Text(" About "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.send),
                    Text(" Sent "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 50,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Icon(Icons.delete),
                    Text(" Bin "),
                    Spacer( ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
            ],
          ),

        ),
*/
