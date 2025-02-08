import 'package:flutter/material.dart';
import 'login_page.dart';
import 'customer_list_page.dart';
import 'customer_details_page.dart';
import 'ledger_info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/customerList': (context) => CustomerListPage(),
        '/customerDetails': (context) => CustomerDetailsPage(customer: {}),
        '/ledgerInfo': (context) => LedgerInfoPage(),
      },
    );
  }
}