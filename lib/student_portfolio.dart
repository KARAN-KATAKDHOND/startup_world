import 'package:flutter/material.dart';

class StudentPortfolioSection extends StatelessWidget {
  const StudentPortfolioSection({super.key});

  final List<Map<String, dynamic>> portfolioItems = const [
    {
      "icon": Icons.business_center,
      "title": "ThomzQ App",
      "description":
          "A unique art through this app, we can send information in form of images/snapshots to the artist.",
    },
    {
      "icon": Icons.lightbulb,
      "title": "MoodyCo",
      "description":
          "An inventory less/zero feature peer taste sharing app. It helps users to get products and services from the givers as well as getting.",
    },
    {
      "icon": Icons.emoji_events,
      "title": "Rewards Engine",
      "description":
          "It is an engine to encourage a person to work more productively by gamifying.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color:   const Color.fromARGB(255, 51, 64, 83),
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Student Portfolio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 16),
            ...portfolioItems.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5E7EB),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        item['icon'],
                        color: const Color(0xFF22D3EE),
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['description'],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF4B5563),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
