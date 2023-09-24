import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'upper_body_workout.dart';

class WorkoutScreen extends StatelessWidget {
  WorkoutScreen({super.key});
//Today variable holds today's date
  final today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF200087),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: IconButton(
                  onPressed: () {
                    //This helps you to navigate backwards
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  " ${DateFormat('EEEE').format(today)}, ${DateFormat('d MMMM').format(today)}, ${'2023'}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Upper Body",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      //To keep the Row on the trailing side
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '60 mins',
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      //To keep the Row on the trailing side
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.shutter_speed,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Easy',
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
//This is used to declear the loop
              for (int i = 0; i < upperBody.length; i++)
                Column(
                  children: [
                    //j takes the first three length at once
                    for (int j = 0; j < upperBody[i].length; j++)
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(
                              upperBody[i][j].imagePath,
                              width: 45,
                              height: 45,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          upperBody[i][j].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
