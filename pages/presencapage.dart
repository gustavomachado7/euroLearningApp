import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_sharing/flutter_bluetooth_sharing.dart';

class PresencaPage extends StatefulWidget {
  @override
  _PresencaPageState createState() => _PresencaPageState();
}

class _PresencaPageState extends State<PresencaPage> {
  List<String> _receivedData = []; 

  @override
  void initState() {
    super.initState();
    _startDiscovery();
    _listenForIncomingData();
  }

  
  void _startDiscovery() async {
    try {
      await FlutterBluetoothSharing.startDiscovery();
      print('Discovery started.');
    } catch (e) {
      print('Error starting discovery: $e');
    }
  }

  
  void _listenForIncomingData() async {
    try {
      
      FlutterBluetoothSharing.getDiscoverableDevices().then((data) {
        setState(() {
          _receivedData.add(data as String);
        });
      });
    } catch (e) {
      print('Error listening for incoming data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Presença'),
      ),
      body: ListView.builder(
        itemCount: _receivedData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_receivedData[index]),
          );
        },
      ),
    );
  }
}
