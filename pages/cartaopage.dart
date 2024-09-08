import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_sharing/flutter_bluetooth_sharing.dart';

class CartaoPage extends StatefulWidget {
  @override
  _CartaoPageState createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaoPage> {
  @override
  void initState() {
    super.initState();
  }

  
  void _startDiscovery() async {
    try {
      await FlutterBluetoothSharing.startDiscovery();
      print('Discovery started.');
    } catch (e) {
      print('Error starting discovery: $e');
    }
  }

  
  void _sendData() async {
    try {
      String data = 'PRESENTE';
      await FlutterBluetoothSharing.sendData(data);
      print('Data sent successfully: $data');
    } catch (e) {
      print('Error sending data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão do Aluno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _startDiscovery,
              child: Text('Start Discovery'),
            ),
            ElevatedButton(
              onPressed: _sendData,
              child: Text('Send Data'),
            ),
          ],
        ),
      ),
    );
  }
}