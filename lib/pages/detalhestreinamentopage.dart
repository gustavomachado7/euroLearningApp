import 'package:eurolearning/models/treinamento_model.dart';
import 'package:eurolearning/pages/cartaoPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetalhesTreinamentoPage extends StatelessWidget {
  final Treinamento treinamento;

  const DetalhesTreinamentoPage({super.key, required this.treinamento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 58, 112, 1),
      appBar: AppBar(
        title: Text(treinamento.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(
                        Icons.person,
                        size: 120,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Progresso: ${treinamento.progress}%',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        treinamento.startDate == null
                            ? ''
                            : DateFormat("'Data de Início:' d 'de' MMM 'de' y")
                                .format(treinamento.startDate!),
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        treinamento.endDate == null
                            ? ''
                            : DateFormat(
                                    "'Data de Término: ' d 'de' MMM 'de' y")
                                .format(treinamento.endDate!),
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Instrutor(a): ${treinamento.teacher}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Duração do treinamento: ${treinamento.duration}h',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
                child: Text(
              'Sobre o Treinamento',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            )),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              treinamento.overview,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Center(
              child: Text(
                'Conteúdo Programático',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: treinamento.topics.map((topic) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check, color: Colors.white),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          topic,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartaoPage(),
                    ),
                  );
                },
                child: const Text(
                  'Autenticar Presença',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 58, 112, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
