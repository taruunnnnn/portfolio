import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => FirstRoute();
}

class FirstRoute extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lime,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(


          children:[

            Container(
              margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Center(
                  child: Text(
                    'Welcome aboard,',
                    style: GoogleFonts.openSans(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
           ),
             //welcome

            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'This is a PORTFOLIO dedicated to a guy\nnamed...',
                style: GoogleFonts.oswald(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            //white font

            Container(
              margin: EdgeInsets.fromLTRB(170, 10, 0, 0),
              child: Text(
                'Tarun Srivastava',
                style: GoogleFonts.mrDafoe(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),  //name

            Container(
              margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
              child: Center(
                child: Text(
                  "Let's get",
                  style: GoogleFonts.fuzzyBubbles(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ), //let's get

            Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),

              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondRoute(title: 'SecondRoute');
              }));
            },
            child: Text('STARTED'),
            ),
          ),
    ),






          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.lime,
          centerTitle: true,

          title: Text(
              'PORTFOLIO',
               style: GoogleFonts.oswald(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
          ),

      ),
      body: ListView(
        children: [


         Stack(
           children: [
             Container(
               margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
               color: Colors.black,
               height: 100 ,
               width: double.infinity,
             ),

          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              color: Colors.lime,
              height: 100 ,
              width: 200,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Container(
                height: 100,
                width: 150,
                child: Image(
                image: AssetImage('assets/portfolio.jpeg')),
              ),
            ),
          ),
],
    ),
         
    //photo

          SizedBox(
            height: 20,
          ),

         Padding(
           padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
           child: Column(
           children: [
            Divider(
              height: 30,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Colors.black,
            ),

            Center(
              child: Text(
                'TARUN SRIVASTAVA',
                style: GoogleFonts.italiana(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),  //name

            Divider(
              height: 30,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Colors.black,
            ),

            SizedBox(
              height: 30,
            ),

            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Center(
                child: Text(
                  'a highly competitive,ambitious, organised sophomore specialised in computer science , with being skilled in multiple domains and is fascinated by the concepts of Machine Learning and AppD.',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,

                ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: Text(
                    'this portfolio serves as an introduction and covers details about my personal as well as professional life such as my projects,skills, qualifications, certifications, my contacts and a brief detail about me..........',
                    style: GoogleFonts.openSans(

                      fontWeight: FontWeight.bold,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),

                 ],
           ),
         ),

          





        ],





      ),



      drawer: Drawer(
        backgroundColor: Colors.black54,

        child: ListView(

          children: [

            Container(
              height: 70,
            child: DrawerHeader(
               child: Container(
                 padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                 child: Text(
                   'Content',
                   style: GoogleFonts.openSans(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 30,
                   ),
                 ),
               ),
            ),
            ),

            Divider(
              thickness: 1,
            color: Colors.white,
            ),

            ListTile(
              title: Text(
                '                  Contact me',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const contact(title: 'contact');

             }));
              },
    ),

            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),

            ListTile(
              title: Text(
                '                   About me',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const about(title: 'about');

                }));
              },
            ),

            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),

            ListTile(
              title: Text(
                '                 Qualifications',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const qual(title: 'qual');

                }));
              },
            ),

            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),

            ListTile(
              title: Text(
                '                 Certifications',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const cert(title: 'cert');

                }));
              },
            ),

            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.lime,
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const skills(title: 'skills');
                    }));
                  },
                  child: Text(

                    'SKILLS',
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),

                  ),),
            ),

            Expanded(
              
              child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const project(title: 'project');
                }));
              },
              child: Text(
                'PROJECTS',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),

              ),),
            ),

          ],
        ),
      ),
    );
  }
}

class contact extends StatelessWidget {

  const contact({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
          title: Text(
            'CONTACTS',
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
      ),

        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
              children: [

                SizedBox(
                  height: 20,
                ),
                Container(

                  child: Center(
                    child: Text(
                      'You can reach out to me through the given contacts.',
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                ),

                Divider(
                  thickness: 1,
                  height: 40,
                  color: Colors.black,
                  indent: 30,
                  endIndent: 30,
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),

                  child: Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [

                              Center(
                                child: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                              ),
                              Center(
                                child: Text(
                                  '         +91 7081968429',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                            SizedBox(
                              height: 10,
                            ),


                            Row(
                              children: [

                                Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                ),
                                Text(
                                  '          tarunsri0017@gmail.com',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                        ],
                      ),
                    ),
                  ),

                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                Center(
                  child: Text(
                    'You can also pitch your project.',
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),

                Divider(
                  thickness: 1,
                  height: 40,
                  color: Colors.black,
                  indent: 30,
                  endIndent: 30,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Container(

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        'hello,\n \n My name is "your name" and my email address is\n"your email address" and I would like to discuss\nabout "this project."',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),

                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),






              ]
          ),
        ),



    );
  }
}

class about extends StatelessWidget {
  const about({Key? key , required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,

      appBar: AppBar(
      backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'About me',
          style: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
      ),

        body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(165, 20, 30, 0),
                child: Text(
                  'Thank you',
                  style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),

              Divider(
                thickness: 1,
                height: 40,
                color: Colors.black,
                indent: 30,
                endIndent: 30,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    "So this is it, you have made this far.\nyou must have been well aware of my professional front by now.\nLet me introduce myself through my eyes.\nFirst of all, Hello there, I'm Tarun.\nI hail from a town named 'Gorakhpur'.\nInside my family , is my parents and \nan elder brother. I did my schooling\nthere and then shifted to Ghaziabad for\n my undergrad degree at AJAY KUMAR GARG\nENGINEERING COLLEGE with focus in\nComputer science.\n\nBefore college one can define me as\nan extremely interest oriented student\nwho loved to unbox all the spare devices\n of my house just to how it was built.\nBeen an computer geek since 9th and\nI personally find this field pretty cool.\nThen happened college. Where there's this\n whole different universe which not only\ngave me ample amount of opportunities\nto explore domains of my own interest,\nbut also provided me with an community\nwhere people love stuff just as I do.\n\nSo there starts my primary ambition.\nTo gain not only vast but complete \nknowledge of my field and reach to \nan expert level in it in order to\nget a place in an organisation or\ncreate my own space where I am embedded\n as a team, with the ability to think,indulge\nand create models and devices which inculcate\n a sense of help among the needy and contributes\nin making this world a better place.",
                    style: GoogleFonts.openSans(
                      color: Colors.white,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  height: 740,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),





            ],
        ),
    );
  }
}

class skills extends StatelessWidget {
  const skills({Key? key , required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'SKILLS',
          style: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,

            color: Colors.black,
          ),
        ),
      ),

      body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Center(
                child: Text(
                  'Skills are our greatest asset.',
                  style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1,
              height: 40,
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Container(
                child: Column(
                 children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
                      child: Text(
                  'PROGRAMING LANGUAGE',
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                    ),

                   Divider(
                     thickness: 1,
                     color: Colors.white,
                     indent: 60,
                     endIndent: 60,
                     height: 30,
                   ),

                   Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                     child: Text(
                       'I am well versed with all the core concepts of the coding languages such as JAVA, C, C++, PYTHON, and I find myself enough skilled to apply my knowledge in building models which increases effectiveness.',
                     style: GoogleFonts.openSans(
                       fontSize: 12,
                       color: Colors.white
                     ),
                     ),
                   )
                ],

                ),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ), //programming

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
                      child: Text(
                        'MARKUP LANGUAGE',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(
                      thickness: 1,
                      color: Colors.white,
                      indent: 60,
                      endIndent: 60,
                      height: 30,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Text(
                        'I have introductory knowledge of HTML, CSS and find myself able to create a website capable of displays useful insights and knowledge',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                    )
                  ],

                ),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ), //markup

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
                      child: Text(
                        'APP DEVELOPMENT',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(
                      thickness: 1,
                      color: Colors.white,
                      indent: 60,
                      endIndent: 60,
                      height: 30,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Text(
                        'I find my skill in APP DEVELOPMENT through FLUTTER to be my most valuable skill which combined with my interest to fuse my vision with coding can give birth to wonderful softwares.',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                    )
                  ],

                ),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ), //app

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
                      child: Text(
                        'MANAGEMENT AND PROFESSIONAL',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(
                      thickness: 1,
                      color: Colors.white,
                      indent: 20,
                      endIndent: 20,
                      height: 20,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Text(
                        'According to my peers, I am great at persuasion negotiation and team management.Also the art of giving flawless output with efficient working algorithms make me a great asset in any team.',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                    )
                  ],

                ),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ), //management and professional






          ]
      ),
    );
  }
}

class project extends StatelessWidget {
  const project({Key? key , required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,

      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'PROJECTS',
          style: GoogleFonts.oswald(
            color: Colors.black,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
      
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
              child: Text(
                'Number of Projects : 0',
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),
              ),
            ),
          ),

          Divider(
            thickness: 1,
            height: 40,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(

              child: Center(
                child: Text(
                  'empty',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(

              child: Center(
                child: Text(
                  'empty',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(

              child: Center(
                child: Text(
                  'empty',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(

              child: Center(
                child: Text(
                  'empty',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Container(

              child: Center(
                child: Text(
                  'empty',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),




            ]
            ),

    );
  }
}

class qual extends StatelessWidget {
  const qual({Key? key , required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'QUALIFICATIONS',
          style: GoogleFonts.oswald(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

        body: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'UNDERGRADUATION',
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),

              Divider(
                thickness: 1,
                height: 40,
                color: Colors.black,
                indent: 30,
                endIndent: 30,
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                       padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),

                  child: Column(
                    children: [

                         Center(
                           child: Text(
                              "AKGEC              -                2021-25",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                    ),
                         ),

                      SizedBox(
                        height: 30,
                      ),


                      Center(
                        child: Text(
                          "Grade:                                      7.45",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),



                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),



              Center(
                child: Text(
                  'INTERMEDIATE',
                  style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),

              Divider(
                thickness: 1,
                height: 40,
                color: Colors.black,
                indent: 30,
                endIndent: 30,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          "St. Joseph's School          -         2020",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          "          Grade:                                    90.6%",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),


                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Center(
                child: Text(
                  'HIGHSCHOOL',
                  style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),

              Divider(
                thickness: 1,
                height: 40,
                color: Colors.black,
                indent: 30,
                endIndent: 30,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          "St. Joseph's School          -         2018",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          "          Grade:                                    90.8%",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),


                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),






            ]
        ),
    );
  }
}

class cert extends StatelessWidget {
  const cert({Key? key , required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'CERTIFICATES',
          style: GoogleFonts.oswald(
            color: Colors.black,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),


        body: ListView(
            children: [
                     SizedBox(
                       height: 20,
                     ),
                Center(
                  child: Text(
                    'Number of Certificates : 0',
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),


              Divider(
                thickness: 1,
                height: 40,
                color: Colors.black,
                indent: 30,
                endIndent: 30,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Center(
                    child: Text(
                      'empty',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Center(
                    child: Text(
                      'empty',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Center(
                    child: Text(
                      'empty',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Center(
                    child: Text(
                      'empty',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Container(

                  child: Center(
                    child: Text(
                      'empty',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),




            ]
        ),
    );
  }
}







