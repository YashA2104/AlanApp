import 'package:alanfinal/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Caretaker extends StatelessWidget {
  static String routeName = '/Caretaker';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Caretaker",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Monitor your personnel",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "Features like call, location, message, camera would allow you do to just that ",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29.5),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            icon: SvgPicture.asset("assets/icons/search.svg"),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        // SeassionCard(
                        //   seassionNum: 1,
                        //   isDone: true,
                        //   press: () {},
                        // ),
                        // SeassionCard(
                        //   seassionNum: 2,
                        //   press: () {},
                        // ),
                        // SeassionCard(
                        //   seassionNum: 3,
                        //   press: () {},
                        // ),
                        // SeassionCard(
                        //   seassionNum: 4,
                        //   press: () {},
                        // ),
                        // SeassionCard(
                        //   seassionNum: 5,
                        //   press: () {},
                        // ),
                        // SeassionCard(
                        //   seassionNum: 6,
                        //   press: () {},
                        // ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Commands",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Call your personnel",
                                ),
                                Text("Start your deepen you practice")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class SeassionCard extends StatelessWidget {
//   final int seassionNum;
//   final bool isDone;
//   final Function press;
//   const SeassionCard({
//     Key key,
//     this.seassionNum,
//     this.isDone = false,
//     this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraint) {
//       return ClipRRect(
//         borderRadius: BorderRadius.circular(13),
//         child: Container(
//           width: constraint.maxWidth / 2 -
//               10, // constraint.maxWidth provide us the available with for this widget
//           // padding: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(13),
//             boxShadow: [
//               BoxShadow(
//                 offset: Offset(0, 17),
//                 blurRadius: 23,
//                 spreadRadius: -13,
//                 color: kShadowColor,
//               ),
//             ],
//           ),
//           child: Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: press,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   children: <Widget>[
//                     Container(
//                       height: 42,
//                       width: 43,
//                       decoration: BoxDecoration(
//                         color: isDone ? kBlueColor : Colors.white,
//                         shape: BoxShape.circle,
//                         border: Border.all(color: kBlueColor),
//                       ),
//                       child: Icon(
//                         Icons.play_arrow,
//                         color: isDone ? Colors.white : kBlueColor,
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "Session $seassionNum",
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
