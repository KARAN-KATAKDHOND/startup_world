import 'package:flutter/material.dart';
import 'package:startup_world/MissionStatement.dart';
import 'package:startup_world/FeatureBar.dart';
import 'package:startup_world/HeroSection.dart';
import 'package:startup_world/AppFooter.dart';
import 'package:startup_world/MainContent.dart';
import 'package:startup_world/ShowcaseSection.dart';
import 'package:startup_world/drawer.dart';
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Row(
              children: [
                Text(
                  'Startup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'World',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: drawer(),
        /*body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 2, 47, 84)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),*/
          body: const SingleChildScrollView(
            child: Column(
              children: [
                HeroSection(),
                FeatureBar(),
                ShowcaseSection(),
                MissionStatement(),
                MainContent(),
                AppFooter(),
              ],
            ),
          ),
          ),
      );
    
  }
}
