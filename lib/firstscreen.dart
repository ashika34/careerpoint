import 'package:careerpoint/login_page.dart';
import 'package:careerpoint/sign_up.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Build your profile',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avathr.png'),
                radius: 25,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Job opportunities waiting for you at Careerpoint',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Login'),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(7),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child: Text('SignUp'),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(7),
              ),
            ),
            Text(
              'About Us',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Blog',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              'FAQ',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Careerpoint.com',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Form(
                    child: Column(
                  children: [
                    Text(
                      'Finding the right job made easy with CareerPoint.com. Register Now and Apply to the best jobs!',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      'assets/images/job-logo.png',
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Find Your Dream Job',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        },
                        child: Text('Login'),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
                            },
                          );
                        },
                        child: Text('Sign Up'),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}







// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Home Page'),
//       ),
//       body: Center(
//         child: Text('This is the main content.'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Do something when the settings option is tapped.
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.help),
//               title: Text('Help'),
//               onTap: () {
//                 // Do something when the help option is tapped.
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
