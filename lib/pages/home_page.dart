import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  TextEditingController _labelController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')
      ),
      body: ListView(
        children: [
          const Text('Add new expense'),
          const SizedBox(height: 18),
          TextFormField(
            controller: _labelController,
            decoration: const InputDecoration(labelText: 'Motivo'),
          ),
          TextFormField(
            controller: _amountController,
            decoration: const InputDecoration(labelText: 'Ammontare'),
          ),
          const SizedBox(height: 18),

        ],
      ),
    );
  }
  
}