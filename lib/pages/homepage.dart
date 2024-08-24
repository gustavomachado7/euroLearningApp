import 'package:eurolearning/models/curso_model.dart';
import 'package:eurolearning/services/api.services.dart';
import 'package:eurolearning/card/mycursos.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  ApiServices apiServices = ApiServices();
  List<Curso> cursos = [];

  @override
  void initState() {
    cursos = apiServices.getCursos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 53, 142, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: AppBar(
            title: const Text('Meus Cursos'),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView.builder(
          itemCount: cursos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: MyCursos(curso: cursos[index]),
            );
          },
        ),
      ),
    );
  }
}
