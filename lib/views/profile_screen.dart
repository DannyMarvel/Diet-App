import 'package:flutter/material.dart';
import 'package:uk_diet_app/views/pages/meal_detail_screen.dart';
import 'package:uk_diet_app/views/pages/workout_screen.dart';
import '../model/model.dart';
import '../views/pages/vector_screen.dart';
import 'package:intl/intl.dart';
import 'package:animations/animations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: BottomNavigationBar(
            iconSize: 40,
            selectedIconTheme: IconThemeData(
              color: Color(0xFF200087),
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.black12,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ('Profile'),
              ),
            ]),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            //To get 30% of the main screen
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 32, right: 16, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          " ${DateFormat('EEEE').format(today)}, ${DateFormat('d MMMM').format(today)}, ${'2023'}",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          'Hello Danny Marvel',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        trailing: ClipOval(
                          child: Image.asset(
                            'assets/images/Danny.jpeg',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          _RadialProgress(
                            height: width * 0.3,
                            width: width * 0.3,
                            progress: 0.7,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              IngredientProgress(
                                  ingredient: 'Protein',
                                  leftAmount: 72,
                                  progressColor: Colors.green,
                                  progress: 0.3,
                                  width: width * 0.28),
                              SizedBox(
                                height: 5,
                              ),
                              IngredientProgress(
                                  ingredient: 'Carbs',
                                  leftAmount: 252,
                                  progressColor: Colors.red,
                                  progress: 0.2,
                                  width: width * 0.28),
                              SizedBox(
                                height: 5,
                              ),
                              IngredientProgress(
                                  ingredient: 'Fat',
                                  leftAmount: 61,
                                  progressColor: Colors.yellow,
                                  progress: 0.1,
                                  width: width * 0.28),
                              SizedBox(
                                height: 5,
                              ),
                              IngredientProgress(
                                  ingredient: 'Fat',
                                  leftAmount: 61,
                                  progressColor: Colors.yellow,
                                  progress: 0.1,
                                  width: width * 0.28),
                              SizedBox(
                                height: 5,
                              ),
                              IngredientProgress(
                                  ingredient: 'Fat',
                                  leftAmount: 61,
                                  progressColor: Colors.yellow,
                                  progress: 0.1,
                                  width: width * 0.28),
                              SizedBox(
                                height: 5,
                              ),
                              IngredientProgress(
                                  ingredient: 'Fat',
                                  leftAmount: 61,
                                  progressColor: Colors.yellow,
                                  progress: 0.1,
                                  width: width * 0.28),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            //To get 30% of the main screen
            //    height: height * 0.35,
            left: 0,
            right: 0,
            child: Container(
              // color: Colors.grey,
              height: height * 0.50, //Note this!!!
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      'MEALS FOR TODAY',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 32,
                          ),
                          //How to show the meals dynamically
                          for (int i = 0; i < meals.length; i++)
                            _MealCard(
                              meals: meals[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    //For the animation effect
                    child: OpenContainer(
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      transitionDuration: Duration(milliseconds: 1000),
                      closedColor: Color(0XFFE9E9E9),
                      openBuilder: (context, _) {
                        return WorkoutScreen();
                      },
                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          //openContainer also does the work of Navigator.of(context) below
                          onTap: openContainer,
                          //This takes you to the next screen and back
                          // () {
                          //   Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //       builder: (context) => WorkoutScreen(),
                          //     ),
                          //   );
                          // },
                          child: Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                              left: 10,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF0008B),
                                  Color(0xFF200087),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // SizedBox(
                                //  width: 20,
                                // ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 16, left: 16),
                                  child: Text(
                                    'YOUR NEXT WORK OUT',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4, left: 16),
                                  child: Text(
                                    'Upper Body',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        child: Image.asset(
                                          'assets/images/Front_Chest.PNG',
                                          width: 50,
                                          height: 50,
                                          // color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        child: Image.asset(
                                          'assets/images/back_chest.PNG',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        // child: Padding(
                                        //   padding: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          'assets/images/MPower.PNG',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.fill,
                                          // color: Colors.white,
                                        ),
                                        //),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Then we create a radial progress class
//This is how e=we create Animations
class _RadialProgress extends StatelessWidget {
  const _RadialProgress(
      {super.key,
      required this.height,
      required this.width,
      required this.progress});

  final double height;
  final double width;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RadialPainter(progress: 0.7),
      child: Container(
        height: height,
        width: width,
        //color: Colors.grey,
        child: Center(
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: '1731',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF200087),
                  ),
                ),
                TextSpan(text: '\n'),
                TextSpan(
                  text: 'kcal left',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF200087),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}

class _MealCard extends StatelessWidget {
  const _MealCard({super.key, required this.meals});

  final Meal meals;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MealDetailScreen(meals: meals),
            ),
          );
        },
        child: Material(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //We use the Expanded widget to divide column into sections
              Flexible(
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Image.asset(
                    meals.imagePath,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          meals.mealTime,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text(
                          meals.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "${meals.kiloCaloriesBurnt} kcal",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 20,
                              color: Colors.black12,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "${meals.timeTaken} min",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
