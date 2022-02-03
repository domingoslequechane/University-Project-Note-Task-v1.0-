import 'package:flutter/material.dart';
import 'package:note_task_v1/shared/icons/app_icons.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';
import 'package:intl/intl.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  _NewTaskState createState() => _NewTaskState();
}

// gat DateTime

class _NewTaskState extends State<NewTask> {
  //
  // Pick Date
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );

    // Condition getting date
    if (pickedDate != null && pickedDate != currentDate) {
      setState(
        () {
          currentDate = pickedDate;
        },
      );
    }
  }

  // Pick Time
  String _selectedTime = '08:00';
  TimeOfDay startTime = TimeOfDay.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? defTime = await showTimePicker(
      context: context,
      initialTime: startTime,
    );

    if (defTime != null) {
      setState(() {
        _selectedTime = defTime.format(context);
        startTime = defTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Date formate
    var formatedDate = DateFormat('dd-MM-yyyy').format(currentDate);

    // AppReturn
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.principal,
        titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.done),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: Text('Salvar'),
          //     style: ElevatedButton.styleFrom(),
          //   ),
          // ),
        ],
      ),

      // body
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //
            // Title
            const TextField(
              keyboardType: TextInputType.text,
              // cursorColor: AppColors.principal,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Titulo',
                hintMaxLines: 2,
              ),
              maxLines: null,
              maxLength: 70,
              minLines: null,
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //
                // Date
                SizedBox(
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _selectDate(context);

                      setState(() {});
                    },
                    icon: const Icon(FlutterIcons.calendar_inv),
                    label: Text(formatedDate),
                  ),
                ),
                const SizedBox(width: 10),

                // Time
                SizedBox(
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _selectTime(context);
                    },
                    icon: const Icon(Icons.access_time_rounded),
                    label: Text(_selectedTime),
                  ),
                ),
              ],
            ),

            // Description
            const TextField(
              keyboardType: TextInputType.text,
              // cursorColor: AppColors.principal,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Descrição...',
                hintMaxLines: null,
              ),
              maxLines: null,
              minLines: null,
            )
          ],
        ),
      ),
    );
  }
}
