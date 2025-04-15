import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final projects = [
      {'name': 'Project 1', 'url': 'https://github.com/test/project1'},
      {'name': 'Project 2', 'url': 'https://github.com/test/project2'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Projects', style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),
        ...projects.map(
          (p) => ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(p['name']!, style: TextStyle(color: Colors.cyan)),
            onTap: () => _launchUrl(p['url']!),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
