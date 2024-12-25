import 'package:flutter/material.dart';
import 'package:pcs_7/model/note.dart';

class ProductCard extends StatelessWidget {
  final Analysis product;
  final Function(Analysis) onAddToCart; 

  ProductCard({required this.product, required this.onAddToCart}); 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title,
              style: const TextStyle(
                fontFamily: 'Montserrat-Regular',
                fontSize: 16,
              ),
              softWrap: true,
            ),
            const SizedBox(height: 8),
            Text(
              product.duration,
              style: const TextStyle(
                fontFamily: 'Montserrat-Regular',
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${product.price} Р',
                  style: const TextStyle(
                    fontFamily: 'Montserrat-Regular',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    onAddToCart(product); 
                  },
                  child: const Text(
                    'Добавить',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 14,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(26, 111, 238, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}
