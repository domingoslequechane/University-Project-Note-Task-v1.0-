import 'package:flutter/material.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({Key? key}) : super(key: key);

  @override
  _TaskTabState createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  bool busca = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.principal,
        title: !busca
            ? Text('Tarefas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800))
            : TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Buscar por...',
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.white)),
                cursorColor: Colors.white,
              ),
        actions: <Widget>[
          busca
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      busca = !busca;
                    });
                  },
                  icon: Icon(Icons.close))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      busca = !busca;
                    });
                  },
                  icon: Icon(Icons.search),
                ),
        ],
      ),

      // Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Nada por fazer!')],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: AppColors.background,
        ),
        backgroundColor: AppColors.principal,
        onPressed: () {
          Navigator.of(context).pushNamed('/new_task');
        },
      ),
    );
  }
}
