// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:note_task_v1/database/notes_database.dart';
// import 'package:note_task_v1/model/notes.dart';
// import 'package:note_task_v1/modules/edit/note_edit_page.dart';
// import 'package:note_task_v1/shared/theme/app_colors.dart';

// class NoteDetailPage extends StatefulWidget {
//   const NoteDetailPage({Key? key, required this.noteId}) : super(key: key);

//   final int noteId;

//   @override
//   NoteDetailPageState createState() => NoteDetailPageState();
// }

// class NoteDetailPageState extends State<NoteDetailPage> {
//   late Note note;
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();

//     refreshNote();
//   }

//   Future refreshNote() async {
//     setState(() {
//       isLoading = true;
//     });

//     // note = await NotesDB.instance.readNote(widget.noteId);

//     setState(() {
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.principal,
//         actions: [
//           IconButton(
//             onPressed: () async {
//               if (isLoading) return;

//               await Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => AddEditNotePage(note: note),
//                 ),
//               );
//             },
//             icon: const Icon(Icons.edit_outlined),
//           ),
//           IconButton(
//             onPressed: () async {
//               // await NotesDB.instance.delete(widget.noteId);

//               Navigator.of(context).pop();
//             },
//             icon: const Icon(Icons.delete),
//           ),
//         ],
//       ),

//       // Body
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   //
//                   // Text
//                   Text(
//                     note.titulo,
//                     style: const TextStyle(
//                       fontSize: 27,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     DateFormat.yMMMd().format(note.dataCriacao),
//                     style: const TextStyle(color: Colors.white38),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     note.descricao,
//                     style: const TextStyle(color: Colors.white70),
//                   ),

//                   // Title fild
//                   // TextField(
//                   //   cursorColor: Color(0xffFFA93F),
//                   //   keyboardType: TextInputType.text,
//                   //   style: TextStyle(
//                   //     fontSize: 27,
//                   //     fontWeight: FontWeight.w800,
//                   //   ),
//                   //   decoration: InputDecoration(
//                   //     hintText: 'Título',
//                   //     // hintStyle: TextStyle(color: AppColors.principal),
//                   //     border: InputBorder.none,
//                   //   ),
//                   //   maxLines: null,
//                   // ),

//                   // Note Field
//                   // TextField(
//                   //   cursorColor: Color(0xffFFA93F),
//                   //   keyboardType: TextInputType.text,
//                   //   decoration: InputDecoration(
//                   //     hintText: 'Digite algo...',
//                   //     // hintStyle: TextStyle(color: AppColors.principal),
//                   //     border: InputBorder.none,
//                   //   ),
//                   //   maxLines: null,
//                   // ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
