import 'package:flutter/material.dart';
import 'package:eurolearning/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartaoPage(),
      routes: {
        '/home': (context) => Homepage(), // Registra a rota '/home'
      },
    );
  }
}

class CartaoPage extends StatefulWidget {
  const CartaoPage({super.key});

  @override
  _CartaoPageState createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaoPage> {
  int _secondsLeft = 10; // Variável para controlar o tempo restante

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  // Função para iniciar a contagem regressiva e redirecionar para a HomePage
  void _startCountdown() {
    Future.delayed(Duration(seconds: 1), _decrementCounter);
  }

  // Função para decrementar o contador a cada segundo
  void _decrementCounter() {
    if (_secondsLeft > 0) {
      setState(() {
        _secondsLeft--;
      });
      _startCountdown(); // Chama novamente a função para continuar a contagem
    } else {
      // Redireciona para a HomePage quando o tempo acabar
      if (mounted) {
        Navigator.pushNamed(context, '/home');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autenticação de Presença'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Presença registrada com sucesso!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                'Você será redirecionado para a página inicial em $_secondsLeft segundos.',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

