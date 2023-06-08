import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FormField =GlobalKey<FormState>();
  final emailcontroller =TextEditingController();
  final passordcontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
            child: Text(
          'Hello Again',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Form(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/job-logo.png',
                height: 150,
                width: 150,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText:'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email,color: Colors.black,),

                  ),

                ),
                SizedBox(
                  height: 35,

                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText:'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password,color: Colors.black,),

                  ),
                ),
                SizedBox(
                height: 30,
                ),
              Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child:FloatingActionButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
        },
        child: Text('Login'),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10)
        ),
        ) ,
      ),

              ],
            )
            ),
            )
            
      ),
    );
  }
}

