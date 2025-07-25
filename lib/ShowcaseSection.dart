import 'package:flutter/material.dart';


class ShowcaseSection extends StatelessWidget {
  const ShowcaseSection({super.key});

  final List<Map<String, String>> showcaseItems = const [
    {
      "title": "Our technologies we handle",
      "imgSrc": "assets/1.jpg",
    },
    {
      "title": "Our domains we work on",
      "imgSrc": "assets/2.jpg",
    },
    {
      "title": "What we teach",
      "imgSrc": "assets/4.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF111827),
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: showcaseItems.map((item) {
          return Card(
            color: const Color(0xFF1F2937),
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Image.asset(
                  item['imgSrc']!,
                  height: 128,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    item['title']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
