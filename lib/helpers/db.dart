import 'package:arearestrita/models/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DataBaseHelper {
  DataBaseHelper._();

  static final DataBaseHelper instance = DataBaseHelper._();

  static Database? _dataBase;
  Future<Database> get database async => _dataBase ??= await _initDataBase();

  Future<Database> _initDataBase() async {
    Directory documentsdirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsdirectory.path, 'arearestrita.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE USER 
      (id INTEGER PRIMARY KEY,
      nome TEXT,
      dataNascimento TEXT,
      cidade TEXT,
      universidade TEXT,
      registroAcademico TEXT,
      senha TEXT )''');

    Usuario UsuarioAdmin = Usuario(
      nome: 'admin',
      dataNascimento: '01/01/2023',
      cidade: 'adminCity',
      universidade: 'adminUniversity',
      registroAcademico: '999999999',
      senha: 'admin',
    );

    await db.insert('USER', UsuarioAdmin.toMap());
  }

  Future<int> cadastrarUsuario(Usuario usuario) async {
    Database db = await instance.database;
    return await db.insert('USER', usuario.toMap());
  }

  Future<Usuario?> getUsuario(String nome, String senha) async {
    Database db = await instance.database;

    final usuario = await db.rawQuery(
        'SELECT * FROM USER WHERE nome = ? and senha = ?', [nome, senha]);

    if (usuario.isNotEmpty) {
      return Usuario.fromMap(usuario.first);
    } else {
      return null;
    }
  }
}
