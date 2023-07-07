import 'package:careerpoint/aboutus.dart';
import 'package:careerpoint/contactus.dart';
import 'package:careerpoint/faq.dart';
import 'package:careerpoint/fav.dart';
import 'package:careerpoint/login_page.dart';
import 'package:careerpoint/profile.dart';
import 'package:careerpoint/searchjobs.dart';
import 'package:careerpoint/sign_up.dart';
import 'package:careerpoint/widgets/card.dart';
import 'package:careerpoint/widgets/carousel.dart';
import 'package:careerpoint/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TextEditingController jobtitle = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Careerpoint'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(Icons.favorite),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(),
                ),
                child: TextField(
                  controller: jobtitle,
                  decoration: InputDecoration(
                    labelText: 'Jobtitle',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchJobs()),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselWithControls(),
              SizedBox(
                height: 15,
              ),
              MyCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelPadding: EdgeInsets.symmetric(horizontal: 10),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          tabs: [
            Tab(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                icon: Icon(Icons.home),
              ),
              text: 'home',
            ),
            SizedBox(
              width: 10,
            ),
            Tab(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Favorite()),
                  );
                },
                icon: Icon(Icons.favorite),
              ),
              text: 'Favorite',
            ),
            SizedBox(
              width: 10,
            ),
            Tab(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchJobs()),
                  );
                },
                icon: Icon(Icons.search),
              ),
              text: 'Search',
            ),
            SizedBox(
              width: 10,
            ),
            Tab(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.person),
              ),
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
