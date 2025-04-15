import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'Firebase',
      'REST APIs',
      'Bloc/Cubit',
      'Riverpod',
      'GetX',
      'Clean Architecture',
      'Git',
      'CI/CD',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children:
              skills
                  .map(
                    (skill) => Chip(
                      label: Text(skill),
                      backgroundColor: Colors.grey[800],
                    ),
                  )
                  .toList(),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
