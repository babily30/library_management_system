import 'package:flutter/material.dart';

class CustomerDetailsPage extends StatelessWidget {
  final Map<String, String> customer;

  CustomerDetailsPage({required this.customer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Code: ${customer['code']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Name: ${customer['name']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Address: D.No.35 & 36, R.T.C. Bus Stand', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Phone No: 9540555021', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Available Normal Credit Limit: 399499', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Available Advance Credit Limit: 0', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Credit Limit: 400000', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Last Payment: 4685', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Balance: 150000', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}