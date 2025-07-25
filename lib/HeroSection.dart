import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      color: const Color(0xFF1F2937),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Image.network(
          //   'https://media.istockphoto.com/id/1460853312/photo/abstract-connected-dots-and-lines-concept-of-ai-technology-motion-of-digital-data-flow.jpg?s=612x612&w=0&k=20&c=bR6oXBoagK2Yagty_At67Dx_wiYRuKJY3hM_ZHCuIxo=',
          //   fit: BoxFit.cover,
          //   color: Colors.black.withOpacity(0.7),
          //   colorBlendMode: BlendMode.darken,
          // ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'TECHNOLOGY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
                const Text(
                  'StartupWorld',
                  style: TextStyle(
                    color: Color(0xFF22D3EE),
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
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
