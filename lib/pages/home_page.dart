import 'package:fitlife2/widgets/event_showing_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitlife2/theme/theme_dataShip.dart';
import 'package:fitlife2/widgets/listed_item_frame.dart';
import 'package:fitlife2/backend_control/app_dataB_control.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // for home page popular workouts section showing
    final popularWorkouts = [
      eventShowingWindow(
        context,
        "assets/images/upper_body_workout.jpg",
        300,
        250,
        ["Upper Body", "Training"],
      ),
      eventShowingWindow(context, "assets/images/backWorkout.jpg", 300, 250, [
        "Back Body",
        "Training",
      ]),
      eventShowingWindow(
        context,
        "assets/images/lower_body_workout.jpg",
        300,
        250,
        ["Lower Body", "Training"],
      ),
      eventShowingWindow(context, "assets/images/fullWorkout.jpg", 300, 250, [
        "Full Body",
        "Training",
      ]),
    ];
    // for home page listed workouts
    final listedWorkouts = [
      ListedItemFrame(
        "assets/images/deadlift.jpg",
        "Deadlift",
        "target back & hamstring",
        [
          "Stand tall, feet shoulder-width apart, bar over mid-foot",
          "Grip bar with hands just outside knees, bend hips and knees",
          "Brace core, chest up, back straight, and look forward",
          "Lift bar by driving through heels, extending hips and knees",
          "Lower bar back down with control, keeping back straight",
        ],
      ),
      ListedItemFrame(
        "assets/images/bench_dumbbell.jpg",
        "Dumbbell Bench Press",
        "target Chest",
        [
          "Lie flat on a bench, holding a dumbbell in each hands",
          "Plant feet firmly on the floor, and press dumbbells above chesst, palms facing forward",
          "Lower dumbbells slowly to chest level, elbows bent at 90",
          "Press up by extending arms, squeezing chest at the top",
          "Repeat for desired reps",
        ],
      ),
      ListedItemFrame(
        "assets/images/plank_hold.jpg",
        "Plank Hold",
        "target core",
        [
          "Start in forearm plank, elbows under sholders",
          "Keep body straight, from head to heels",
          "Engage core, squeeze glutes and legs",
          "Avoid sagging hips or arching back",
          "Hold for time, keeping breath steady",
        ],
      ),
      ListedItemFrame(
        "assets/images/man_with_dumbel.jpg",
        "Dumbbell Biceps Curl",
        "target biceps ",
        [
          "Stand tall, dumbbells in hands, palms forward",
          "Tuck elbows close to your sides",
          "Curl up the dumbbells slowly",
          "Squeeze biceps at the top",
          "Lower down with control",
        ],
      ),
      ListedItemFrame(
        "assets/images/push_up.jpg",
        "Push-Up",
        "target Sholder & chest",
        [
          "Get in plak, hands under shoulders",
          "Keep body straight, core tight",
          "Lower chest to the floor",
          "Elbows bend at 45 degrees",
          "Push up back to start",
        ],
      ),
      ListedItemFrame(
        "assets/images/pull_up.jpg",
        "Pull-Up",
        "target shoulder & back",
        [
          "Grab bar with hands shoulde-width",
          "Hang freely, arms fully extended",
          "Pull up until chin clears the bar",
          "Squeez back and biceps at top",
          "Lower down slowly to full hang",
        ],
      ),
      ListedItemFrame(
        "assets/images/squat.jpg",
        "Barbell Squat",
        "target quadriceps & glutes",
        [
          "set barbell on your uper back, feet shoulder-width apart",
          "Brace core, chest up, and look forward",
          "Lower hips by bending knees , keepind back straight",
          "Go down untill thighs are parallel to the floor",
          "Push up through heels to return to standing",
        ],
      ),
      ListedItemFrame(
        "assets/images/sit_up.jpg",
        "Sit Up",
        "target Abdominals",
        [
          "Lie down, knees bent, feet flat on floor",
          "Cross arms over chest or place behind head",
          "Engage core and lift upper body",
          "Sit up untill chest nears knees",
          "Lower back down with control",
        ],
      ),
    ];
    return ListView(
      children: [
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
          decoration: BoxDecoration(
            color: mainGreyGenerator(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.hand_raised_fill,
                color: secondGreenGenerator(1),
              ),
              Text(
                userProfileInfo["userName"],
                style: TextStyle(color: mainWhiteGenerator(1), fontSize: 25),
              ),
            ],
          ),
        ),

        // ElevatedButton(onPressed: (){},
        // style: ButtonStyle(
        // ), child: Text("Alert"),),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Popular Workouts",
            style: TextStyle(color: mainWhiteGenerator(1), fontSize: 25),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(color: mainBlackGenerator(1)),
                bottom: BorderSide(color: mainBlackGenerator(1)),
              ),
              gradient: LinearGradient(
                colors: [
                  mainBlackGenerator(0.7),
                  mainBlackGenerator(0.5),
                  secondGreenGenerator(0.4),
                  mainGreenGenerator(0.4),
                  secondGreenGenerator(0.4),
                  mainBlackGenerator(0.5),
                  mainBlackGenerator(0.7),
                ],
              ),
            ),
            child: Row(children: [for (var item in popularWorkouts) item]),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Recommended",
            style: TextStyle(color: mainWhiteGenerator(1), fontSize: 25),
          ),
        ),

        // final imgUrl = "assets/images/upperWorkout.jpg";
        // final name = "Push Up";
        // final target = "target upper ";
        // final steps = ["Pull and I ", "Pull and I ", "Pull and I "];
        for (var item in listedWorkouts) item,

        SizedBox(height: 75),
      ],
    );
  }
}
