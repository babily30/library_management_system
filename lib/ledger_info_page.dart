import 'package:flutter/material.dart';

class LedgerInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ledger Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ledger Information:', style: TextStyle(fontSize: 18)),
            // Add ledger information here
          ],
        ),
      ),
    );
  }
}