import 'package:flutter/material.dart';
import 'package:pcs_7/model/note.dart';
import 'package:pcs_7/components/item_note.dart';

class HomePage extends StatelessWidget {
  final Function(Analysis) onAddToCart; 

  HomePage({required this.onAddToCart}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Каталог услуг',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat-Medium',
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: analyses.length,
          itemBuilder: (context, index) {
            final product = analyses[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ProductCard(
                product: product,
                onAddToCart: onAddToCart, 
              ),
            );
          },
        ),
      ),
    );
  }
}
