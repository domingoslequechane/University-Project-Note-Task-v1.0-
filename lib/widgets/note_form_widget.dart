import 'package:flutter/material.dart';

class NoteFormWidget extends StatelessWidget {
  const NoteFormWidget(
      {Key? key,
      this.titulo,
      this.descricao,
      required this.onChangedTitle,
      required this.onChangedDescription})
      : super(key: key);

  final String? titulo;
  final String? descricao;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
