import 'package:flutter/material.dart';
import 'package:library_management_app/customer_details_page.dart';

class CustomerListPage extends StatelessWidget {
  final List<Map<String, String>> customers = [
    {'code': 'DR-AP-0001', 'name': 'Andhra Fertilizers & Pesticides'},
    {'code': 'DR-AP-0002', 'name': 'Bhargavi Seeds & Pesticides'},
    {'code': 'DR-AP-0003', 'name': 'Ciri Agro Chemicals'},
    {'code': 'DR-AP-0004', 'name': 'Dwaraka Seeds & Pesticides'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: customers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(customers[index]['code']!),
                  subtitle: Text(customers[index]['name']!),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomerDetailsPage(customer: customers[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}