class Usuario {
  final int? id;
  final String? nome;
  final String? dataNascimento;
  final String? cidade;
  final String? universidade;
  final String? registroAcademico;
  final String? senha;

  Usuario(
      {this.id,
      this.nome,
      this.dataNascimento,
      this.cidade,
      this.universidade,
      this.registroAcademico,
      this.senha});

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
      id: json['id'],
      nome: json['nome'],
      dataNascimento: json['dataNascimento'],
      cidade: json['cidade'],
      universidade: json['universidade'],
      registroAcademico: json['registroAcademico'],
      senha: json['senha']);

  Map<String, dynamic> toMap() => {
        'id': id,
        'nome': nome,
        'dataNascimento': dataNascimento,
        'cidade': cidade,
        'universidade': universidade,
        'registroAcademico': registroAcademico,
        'senha': senha,
      };
}
