import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const ResumeBuilder());
}

class ResumeBuilder extends StatelessWidget {
  const ResumeBuilder({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const FASConnectorResumeBuilder(),
    );
  }
}

class FASConnectorResumeBuilder extends StatefulWidget {
  const FASConnectorResumeBuilder({Key? key}) : super(key: key);

  @override
  State<FASConnectorResumeBuilder> createState() =>
      _FASConnectorResumeBuilderState();
}

class _FASConnectorResumeBuilderState extends State<FASConnectorResumeBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Container(
          height: MediaQuery.of(context).size.height / 6,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft:  Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
            ),
            color: Color(0xFF3d4f65),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/images/Usama.png'),
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.height / 10,
                    ),
                    ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/15,
                ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Usama Sadiq',style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.008,
                      ),
                      Text('Software Engineer', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),)
                    ],
                  )
              ],
            ),
          ),),
          Container(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              Text('Summery',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
              ),
              ),
                SizedBox(
                  height: 10,
                ),
                Text('Energetic Professional Software Engineer skilled in leadership,'
                    ' with a strong foundation in oop, data structures, problem-solving, cross-platform coding,'
                    ' and graphicsdesigning. Seeking to leverage '
                    'solid skills in leadership, development, and production.',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Education',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ))
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                    ),
                    Column(
                      children: [
                        Text('Skills',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Experience / Projects',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ))
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/8,
                    ),
                    Column(
                      children: [
                        Text('Contact',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )
                        )
                      ],
                    )
                  ],
                ),

              ],
            ),
          ),
          //bottom Container
          Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.05,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: Color(0xFF3d4f65),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin, color: Colors.white,
                      size: 24.0,
                    ),
                    label: Text('Usama Sadiq',style: TextStyle(
                      color: Colors.white
                    ),),
                  ),

                  TextButton.icon(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.github, color: Colors.white,
                      size: 24.0,
                    ),
                    label: Text('Usama Sadiq',style: TextStyle(
                        color: Colors.white
                    ),),
                  ),

                ],
              ),
            ),
    ]
      ),
    );
  }
}
