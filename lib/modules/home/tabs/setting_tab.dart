import 'package:flutter/material.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';
import 'package:note_task_v1/shared/theme/app_theme_controller.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  _SettingTabState createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.principal,
        title: const Text(
          'Config.',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      // Body
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // User
              Row(
                children: const [
                  Icon(
                    Icons.person,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Usuário',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    Row(
                      children: const [Text('Criar conta')],
                    )
                  ],
                ),
              ),

              //Apparence
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(
                    Icons.color_lens,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Aparéncia',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Modo escuro'),
                        CustomSwitch(),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Updates
              Row(
                children: const [
                  Icon(
                    Icons.update,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Actualizações',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    Row(
                      children: const [Text('Checar Actualização')],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Theme changer
class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppThemeController.controller.darkTheme,
      onChanged: (value) {
        AppThemeController.controller.changeTheme();
      },
    );
  }
}
