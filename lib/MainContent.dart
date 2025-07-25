import 'package:flutter/material.dart';
import 'package:startup_world/AboutSection.dart';
import 'package:startup_world/student_portfolio.dart';


class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:    const Color(0xFF1F2937), // bg-gray-100
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          AboutSection(),
          SizedBox(height: 32),
          StudentPortfolioSection(),
        ],
      ),
    );
  }
}
