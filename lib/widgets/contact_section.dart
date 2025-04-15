import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'eslamfareed0@gmail.com',
    );
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contact', style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),
        InkWell(
          onTap: _sendEmail,
          child: Text(
            'eslamfareed0@gmail.com',
            style: TextStyle(color: Colors.cyan),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
