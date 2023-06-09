import 'dart:html';

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
            const ListTile(
              title: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Build your profile',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              leading: CircleAvatar(
                // backgroundImage: AssetImage('assets/avathr.png'),
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-psd/3d-cartoon-avatar-smiling-woman_1020-5129.jpg?w=2000'),
                radius: 25,
              ),
              subtitle: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Job opportunities waiting for you at Careerpoint',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'About Us',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Blog',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              'FAQ',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Careerpoint.com',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                child: Form(
                    child: Column(
                  children: [
                    const Text(
                      'Finding the right job made easy with CareerPoint.com. Register Now and Apply to the best jobs!',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      'assets/images/job-logo.png',
                      height: 150,
                      width: 150,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Find Your Dream Job',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text('Or',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 30,

                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ));
                          },
                          child: const Text('SignUp'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          )),
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
