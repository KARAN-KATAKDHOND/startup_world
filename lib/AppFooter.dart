import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';





class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1F2937),
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: [
          // const Text(
          //   'Member Testimonials',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // const SizedBox(height: 16),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: List.generate(
          //     5,
          //     (index) => Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 4.0),
          //       child: CircleAvatar(
          //         radius: 24,
          //         backgroundColor: const Color(0xFF22D3EE),
          //         child: CircleAvatar(
          //           radius: 22,
          //           backgroundImage: NetworkImage(
          //             'https://placehold.co/100x100/718096/ffffff?text=User${index + 1}',
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 32),
          const Text(
            'Tweet With Us!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SvgPicture.string(
              '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-twitter-x" viewBox="0 0 16 16"><path d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.602.75Zm-1.78 13h2.683L4.05 2.16H1.31z"/></svg>',
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: const Text(
              'Follow @StartupWorld',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3B82F6),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Divider(color: Color(0xFF4B5563)),
          _buildFooterLinks(context),
          const SizedBox(height: 16),
          const Text(
            'Copyright © All Rights Reserved @ startupworld.co',
            style: TextStyle(color: Color(0xFF6B7280), fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLinks(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildLinkSection('News | Events | Media', [
          'Latest News',
          'Upcoming Events',
          'Media Coverage',
        ]),
        _buildLinkSection('What We Do', [
          'Our Services',
          'Student Spotlight',
          'Contact Us',
        ]),
        _buildLinkSection('Legal', ['Privacy Policy', 'Terms of Service']),
      ],
    );
  }

  Widget _buildLinkSection(String title, List<String> links) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          ...links.map(
            (link) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0, left: 8.0),
              child: Text(
                link,
                style: const TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
