import 'package:flutter/material.dart';


class MissionStatement extends StatelessWidget {
  const MissionStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:   const Color(0xFF1F2937),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: const Text(
        '"Startup World focuses on developing student ideas into real / professional teams and create polished up version of student ideas for organizations."',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF374151),
          fontStyle: FontStyle.italic,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
