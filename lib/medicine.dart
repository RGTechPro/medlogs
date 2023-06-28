import 'package:flutter/material.dart';
import 'package:medlogs/widget/date_card.dart';

class MedicinePage extends StatelessWidget {
  List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF0D7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/capsule.png',
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "How's your \nhealth today ?",
                  style: TextStyle(
                    fontFamily: 'Capra',
                    fontSize: 35,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Hope you are taking medicines on time",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Medicine Reminders",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 70,
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        int dayIndex = index;
                        // if(index>7){
                        //   dayIndex=
                        // }
                        return DateCard(day: days[0], date: index+1);
                      },
                      itemCount: 30,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
