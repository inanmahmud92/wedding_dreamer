import 'package:flutter/material.dart';
import 'package:wedding_app/submit.dart';

import 'default_button.dart';

class Details extends StatefulWidget {
  static String tag = "details-tag";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsState();
  }
}

class _DetailsState extends State<Details> {
  int clicked = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          SizedBox(
            width: 238,
            height: 300,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                "assets/img/photo1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    "Premium Event Planning Services We Provide.... Photography Cinematography Stage Decoration Bridal Mehendi DJ & Sound System",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                clicked = 1;
                              });
                            },
                            child: Card(
                              child: Container(
                                color: clicked ==1?Colors.yellowAccent:Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Package 1",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "1 Photographer\n 1 Cinematographer",
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "Tk 10,000 BDT",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                clicked = 2;
                              });
                            },
                            child: Card(
                              child: Container(
                                color: clicked ==2?Colors.yellowAccent:Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Package 2",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "2 Photographer\n 1 Cinematographer",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "Tk 15,000 BDT",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                clicked = 3;
                              });
                            },
                            child: Card(
                              child: Container(
                                color: clicked ==3?Colors.yellowAccent:Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Package 3",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "2 Photographer\n 2 Cinematographer",
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "Tk 20,000 BDT",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 40,
                            top: 15,
                          ),
                          child: DefaultButton(
                            text: "Proceed to Booking",
                            press: () {
                              //Navigator.pushNamed(context, Submit.tag);
                              // ignore: unnecessary_statements
                              clicked !=0? _presentBottomSheet(context):null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _presentBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: const Radius.circular(25.0),
              )),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Submit.tag);
            },
            child: Container(
              child: Center(
                child: Image.asset(
                  "assets/img/bkash-logo.png",
                  height: 70,
                  width: 80,
                ),
              ),
            ),
          ),
        );
      });
}

Widget _buildBottomSheetRow(
  BuildContext context,
  IconData icon,
  String text,
) =>
    InkWell(
      onTap: () {},
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(
              icon,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(width: 8),
          Text(text),
        ],
      ),
    );

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
