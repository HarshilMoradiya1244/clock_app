import 'package:flutter/material.dart';

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("ui"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 193,
                width: 193,
                child: Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sunday",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text("31 / 08 / 2023",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  Text("$hour : $minute : $second",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Text("PM    33",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void digitalclock()
  {
    Future.delayed(Duration(seconds:1),(){
      setState(() {
        hour=DateTime.now().hour;
        minute=DateTime.now().minute;
        second=DateTime.now().second;
        digitalclock();
      });
    },
    );
    if(hour>12)
    {
      hour=hour-12;
    }
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
