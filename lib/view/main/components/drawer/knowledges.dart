import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge', style: TextStyle(color: Colors.white)),
        ),
        KnowledgeText(knowledge: 'Flutter, ASP.NET'),
        KnowledgeText(knowledge: 'Dart, Java'),
        KnowledgeText(knowledge: 'C#, HTML'),
        KnowledgeText(knowledge: 'CSS, Java Script'),
        KnowledgeText(knowledge: 'Cubit, Provider'),
        KnowledgeText(knowledge: 'Bloc, GetX'),
        KnowledgeText(knowledge: 'Supabase, Firebase'),
      ],
    );
  }
}
