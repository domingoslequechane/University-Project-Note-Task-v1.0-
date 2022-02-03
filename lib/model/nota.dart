class Nota {
  // Campos
  late int id;
  late String titulo;
  late String descricao;
  late String dataCriacao;

  // Construtor
  Nota(
      {required this.id,
      required this.titulo,
      required this.descricao,
      required this.dataCriacao});

  // Funções de conversão Map
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id ': id,
      'titulo': titulo,
      'descricao': descricao,
      'dataCriacao': dataCriacao,
    };
    return map;
  }

  Nota.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    titulo = map['titulo'];
    descricao = map['descricao'];
    dataCriacao = map['dataCricao'];
  }

  // Sobre-esccrevemos o metodo toString d classe para podermos fazer um teste sem termos um interface (N é obrigatorio)
  @override
  String toString() {
    return "Nota => (id: $id, titulo: $titulo, descricao: $descricao, dataCriacao: $dataCriacao)";
  }
}
