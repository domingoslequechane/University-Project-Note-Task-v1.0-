import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_task_v1/helpers/note_db_helper.dart';
import 'package:note_task_v1/model/nota.dart';
import 'package:note_task_v1/modules/note/new_note_page.dart';
// import 'package:note_task_v1/model/notes.dart';
import 'package:note_task_v1/shared/theme/app_colors.dart';

class NoteTab extends StatefulWidget {
  const NoteTab({Key? key}) : super(key: key);

  @override
  _NoteTabState createState() => _NoteTabState();
}

class _NoteTabState extends State<NoteTab> {
  bool busca = false;
  // Instancia de acesso ao note_db
  NotaHelper db = NotaHelper.instance;

  List<Nota> notas = <Nota>[];
  List<Nota> _annotations = <Nota>[];

  bool isLoading = false;

  // Metodo que exibe todos os contatos
  // @override
  // void exibirTodasNotas() {
  //   super.initState();

  //   db.getNotes().then((lista) {
  //     setState(() {
  //       notas = lista;
  //     });
  //   });
  // }

  /// Para testes
  // @override
  // void initState() async {
  //   super.initState();

  //   // refreshNotes();

  //   // NotesDB.instance.
  //   Nota n = Nota(
  //     id: 1,
  //     titulo: 'titulo1',
  //     descricao: 'descricao1',
  //     dataCriacao: DateTime.now().toString(),
  //   );
  //   db.insertNote(n);

  //   Nota n2 = Nota(
  //     id: 2,
  //     titulo: 'titulo 2',
  //     descricao: 'descricao 2',
  //     dataCriacao: DateTime.now().toIso8601String(),
  //   );
  //   db.insertNote(n2);

  //   List getN = await db.getNotes();

  //   for (int i = 0; i < getN.length; i++) {
  //     var item = getN[i];
  //     Nota anotacao = Nota.fromMap(item);
  //     db.insertNote(anotacao);
  //   }
  //   setState(() {
  //     _annotations = notas!;
  //   });
  //   notas = null;

  //   print(notas);
  //   db.getNotes().then((lista) => print(lista));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.principal,
        title: !busca
            ? const Text('Notas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800))
            : const TextField(
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
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: notas.length,
        itemBuilder: (context, index) {
          return Container();
          // _listaNotas(context, index);
        },
      ),

      // Float action button
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_sharp,
          color: AppColors.background,
        ),
        backgroundColor: AppColors.principal,
        onPressed: () {
          Navigator.pushNamed(context, '/new_note');
        },
      ),
    );
  }

  // _listaNotas(BuildContext context, int index) {
  //   return GestureDetector(
  //     child: Card(
  //       child: Padding(
  //         padding: EdgeInsets.all(10),
  //         child: Column(
  //           // crossAxisAlignment: CrossAxisAlignment.start,
  //           children: <Widget>[
  //             Container(
  //               width: 70,
  //               height: 70,
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //               ),
  //               child: Column(
  //                 children: <Widget>[
  //                   Text(notas[index].titulo ?? "",
  //                       style: TextStyle(
  //                           fontSize: 20, fontWeight: FontWeight.w500)),
  //                   Text(notas[index].descricao ?? "",
  //                       style: TextStyle(fontSize: 15)),
  //                   Text(notas[index].titulo ?? "",
  //                       style: TextStyle(fontSize: 10)),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     // onTap: () {
  //     //   _exibirNota(nota: notas[index]);
  //     // },
  //   );
  // }

  // // Exibir nota ao clicar em um nota
  // void _exibirNota({required Nota nota}) async {
  //   final notaRecebida = await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => NotePage(nota: nota),
  //     ),
  //   );

  //   if (notaRecebida != null) {
  //     if (nota != null) {
  //       await db.updateNote(notaRecebida);
  //     } else {
  //       await db.insertNote(notaRecebida);
  //     }
  //     exibirTodasNotas();
  //   }
  // }
}
