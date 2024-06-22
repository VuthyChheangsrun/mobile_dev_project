import 'package:flutter/material.dart';

class CreditInfoScreen extends StatelessWidget {
  const CreditInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(225, 247, 245, 100),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Done', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'images/credit_card.png',
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.credit_card, size: 30),
                Icon(Icons.paypal, size: 30),
                Icon(Icons.credit_card, size: 30),
              ],
            ),
            SizedBox(height: 20),
            _buildTextField(label: 'Cardholder Name'),
            SizedBox(height: 10),
            _buildTextField(label: 'Card Number'),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: _buildTextField(label: 'Exp Date')),
                SizedBox(width: 10),
                Expanded(child: _buildTextField(label: 'CVC')),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  TextField _buildTextField({required String label}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}