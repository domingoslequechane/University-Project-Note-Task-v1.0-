import 'package:flutter/material.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';

class InfoTab extends StatefulWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  _InfoTabState createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.principal,
        elevation: 0,
        title: const Text(
          'Info.',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
          ),
        ),
      ),

      // Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_icon2.png',
                width: 35,
              ),
              const SizedBox(width: 5),
              const Text(
                'Note-Task',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text('Versão: 1.0'),
          const Text('Commit: Commit-code'),
          const Text('Data: 13-01-2022'),
          const Text('Flutter: 2.8.2'),
          const Text('Sqflite: 2.0.1'),
          const Text('intl: 0.17.0'),
          const Text('Github: link'),
        ],
      ),
    );
  }
}
