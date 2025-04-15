import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Me', style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),
        Text(
          'Passionate Flutter developer with strong experience in building high-quality cross-platform applications. Instructor and mentor with a knack for simplifying complex topics and helping others grow.',
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
