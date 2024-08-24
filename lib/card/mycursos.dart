import 'package:eurolearning/models/curso_model.dart';
import 'package:eurolearning/pages/detalhescursopage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyCursos extends StatelessWidget {
  const MyCursos({
    super.key,
    required this.curso,
  });

  final Curso curso;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalhesCursoPage(curso: curso),
            ),
          );
        },
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                ),
                child: const Icon(
                  Icons.calendar_month,
                  size: 75,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        curso.title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      curso.startDate == null
                          ? ''
                          : DateFormat("'Data de Início:' d 'de' MMM 'de' y")
                              .format(curso.startDate!),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      curso.endDate == null
                          ? ''
                          : DateFormat("'Data de Término: ' d 'de' MMM 'de' y")
                              .format(curso.endDate!),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Instrutor(a): ${curso.teacher}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Duração do curso: ${curso.duration}h',
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
