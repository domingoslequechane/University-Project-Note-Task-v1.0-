import 'package:flutter/material.dart';
import 'package:note_task_v1/modules/home/tabs/info_tab.dart';
import 'package:note_task_v1/modules/home/tabs/note_tab.dart';
import 'package:note_task_v1/modules/home/tabs/setting_tab.dart';
import 'package:note_task_v1/modules/home/tabs/taks_tab.dart';
import 'package:note_task_v1/shared/icons/app_icons.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  // Index Navigator Variable
  int _currentIndex = 0;

  // Tabs
  final tabs = [
    //
    // Tab 1
    const NoteTab(),

    // Tab 2
    const TaskTab(),

    // Tab 3
    const SettingTab(),

    // Tab 4
    const InfoTab(),
  ];

  @override
  Widget build(BuildContext context) {
    //
    // App Start
    return Scaffold(
      backgroundColor: AppColors.background,

      // Body Start
      body: tabs[_currentIndex],
      //

      // BottomNavigatorBar Start
      bottomNavigationBar: BottomNavigationBar(
        //
        // Configuration
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffFFA93F),
        // unselectedItemColor: Colors.grey,
        // backgroundColor: const Color(0xff332B40),

        // Items
        items: const [
          // Notes
          BottomNavigationBarItem(
            icon: Icon(
              FlutterIcons.pen_square,
            ),
            label: 'Notas',
          ),

          // Tasks
          BottomNavigationBarItem(
            icon: Icon(
              FlutterIcons.event_note,
            ),
            label: 'Tarefas',
          ),

          //Settings
          BottomNavigationBarItem(
            icon: Icon(
              FlutterIcons.cog,
            ),
            label: 'Config.',
          ),

          // Info
          BottomNavigationBarItem(
            icon: Icon(
              FlutterIcons.info_circled,
            ),
            label: 'Info.',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // NotesDB.instance.database;
          });
        },
      ),
    );
  }
}
