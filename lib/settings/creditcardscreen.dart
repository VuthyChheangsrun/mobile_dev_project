import 'package:flutter/material.dart';

class CreditInfoScreen extends StatelessWidget {
  const CreditInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/Logo.png", width: 30,),
              const Icon(Icons.person, size: 30,),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
              color: Color.fromRGBO(225, 247, 245, 100),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_sharp)
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Done', style: TextStyle(color: Colors.black)),
                ),
            
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'images/credit_card.png',
                    height: 200,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.credit_card, size: 30),
                    Icon(Icons.paypal, size: 30),
                    Icon(Icons.credit_card, size: 30),
                  ],
                ),
                const SizedBox(height: 20),
                _buildTextField(label: 'Cardholder Name'),
                const SizedBox(height: 10),
                _buildTextField(label: 'Card Number'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: _buildTextField(label: 'Exp Date')),
                    const SizedBox(width: 10),
                    Expanded(child: _buildTextField(label: 'CVC')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextField _buildTextField({required String label}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}