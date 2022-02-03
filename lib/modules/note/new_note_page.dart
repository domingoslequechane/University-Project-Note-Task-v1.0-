import 'package:flutter/material.dart';
import 'package:note_task_v1/model/nota.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';

class NotePage extends StatefulWidget {
  const NotePage({
    Key? key,
    // required Nota nota,
    // required this.nota,
    // required this.nota,
  }) : super(key: key);

  // final Nota nota;

  @override
  NotePageState createState() => NotePageState();
}

class NotePageState extends State<NotePage> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.principal,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.done),
          ),
        ],
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            //
            // Title fild
            TextField(
              cursorColor: Color(0xffFFA93F),
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w800,
              ),
              decoration: InputDecoration(
                hintText: 'Título',
                // hintStyle: TextStyle(color: AppColors.principal),
                border: InputBorder.none,
              ),
              maxLines: null,
            ),

            // Note Field
            TextField(
              cursorColor: Color(0xffFFA93F),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Digite algo...',
                // hintStyle: TextStyle(color: AppColors.principal),
                border: InputBorder.none,
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
