// import 'package:flutter/material.dart';
// // import 'package:note_task_v1/database/notes_database.dart';
// import 'package:note_task_v1/model/notes.dart';
// import 'package:note_task_v1/shared/theme/app_colors.dart';

// class AddEditNotePage extends StatefulWidget {
//   final Note? note;

//   const AddEditNotePage({Key? key, this.note}) : super(key: key);

//   @override
//   AddEditNotePageState createState() => AddEditNotePageState();
// }

// class AddEditNotePageState extends State<AddEditNotePage> {
//   final _formKey = GlobalKey<FormState>();
//   late String titulo;
//   String descricao = '';

//   //
//   // ignore: non_constant_identifier_names
//   void AddOrUpdateNote() async {
//     final isValid = _formKey.currentState?.validate() ?? false;

//     if (isValid) {
//       await updateNote();
//     } else {
//       await addNote();
//     }

//     Navigator.of(context).pop();
//   }

//   Future updateNote() async {
//     final note = widget.note!.copy(
//       titulo: titulo,
//       descricao: descricao,
//       dataCriacao: DateTime.now(),
//     );

//     // await NotesDB.instance.update(note);
//   }

//   Future addNote() async {
//     final note = Note(
//       titulo: NoteFields.titulo,
//       descricao: NoteFields.descricao,
//       dataCriacao: DateTime.now(),
//     );

//     // await NotesDB.instance.createData(note);
//   }

//   bool valor = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.principal,
//         actions: [
//           IconButton(
//             onPressed: () {
//               AddOrUpdateNote();
//             },
//             icon: const Icon(Icons.save),
//           ),
//         ],
//       ),

//       body: Form(
//         key: _formKey,
//         child: Container(),
//       ),

//       // Body
//       // body: Padding(
//       //   padding: const EdgeInsets.all(10),
//       //   child: Column(
//       //     children: [
//       //       //
//       //       // Title fild
//       //       TextField(
//       //         onChanged: (inputTitle) => titulo = inputTitle,
//       //         cursorColor: Color(0xffFFA93F),
//       //         keyboardType: TextInputType.text,
//       //         style: const TextStyle(
//       //           fontSize: 27,
//       //           fontWeight: FontWeight.w800,
//       //         ),
//       //         decoration: const InputDecoration(
//       //           hintText: 'Título',
//       //           // hintStyle: TextStyle(color: AppColors.principal),
//       //           border: InputBorder.none,
//       //         ),
//       //         maxLines: null,
//       //       ),

//       //       // Note Field
//       //       TextField(
//       //         onChanged: (inputDescription) => descricao = inputDescription,
//       //         cursorColor: Color(0xffFFA93F),
//       //         keyboardType: TextInputType.text,
//       //         decoration: InputDecoration(
//       //           hintText: 'Digite algo...',
//       //           // hintStyle: TextStyle(color: AppColors.principal),
//       //           border: InputBorder.none,
//       //         ),
//       //         maxLines: null,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
