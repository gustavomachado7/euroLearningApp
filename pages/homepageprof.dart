// import 'package:flutter/material.dart';
// import '../card/mytreinamentos.dart';
// import '../models/treinamento_model.dart';
// import '../services/apiServices.dart';
// import 'presencapage.dart'; 

// class Homepageprof extends StatefulWidget {
//   const Homepageprof({super.key});

//   @override
//   State<Homepageprof> createState() => _Homepageprof();
// }

// class _Homepageprof extends State<Homepageprof> {
//   ApiServices apiServices = ApiServices();
//   List<Treinamento> treinamentos = [];

//   @override
//   void initState() {
//     treinamentos = apiServices.getTreinamentos();
//     super.initState();
//   }

//   void liberarChamada(int treinamentoId) {
//     setState(() {
//       treinamentos = treinamentos.map((treinamento) {
//         if (treinamento.id == treinamentoId) {
//           return Treinamento(
//             id: treinamento.id,
//             overview: treinamento.overview,
//             topics: treinamento.topics,
//             teacher: treinamento.teacher,
//             startDate: treinamento.startDate,
//             endDate: treinamento.endDate,
//             title: treinamento.title,
//             duration: treinamento.duration,
//             progress: treinamento.progress,
//             courseOpen: true,
//           );
//         }
//         return treinamento;
//       }).toList();
//     });

//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => PresencaPage(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(0, 58, 112, 1),
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(55.0),
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Colors.white,
//           ),
//           child: AppBar(
//             title: const Text('Meus Treinamentos'),
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 30.0),
//         child: ListView.builder(
//           itemCount: treinamentos.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Column(
//                 children: [
//                   MyTreinamentos(treinamento: treinamentos[index]),
//                   ElevatedButton(
//                     onPressed: () => liberarChamada(treinamentos[index].id),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green, 
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                     ),
//                     child: const Text(
//                       'Liberar Chamada',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }