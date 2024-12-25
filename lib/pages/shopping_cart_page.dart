import 'package:flutter/material.dart';
import 'package:pcs_7/model/note.dart';

class ShoppingCartPage extends StatelessWidget {
  final List<Analysis> cart;
  final Function(Analysis) onRemoveFromCart;

  ShoppingCartPage({
    Key? key,
    required this.cart,
    required this.onRemoveFromCart, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalSum = cart.fold(0, (sum, item) => sum + (item.price * item.quantity));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Корзина',
          style: TextStyle(
            fontFamily: 'Montserrat-Medium',
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final product = cart[index];
                  return CartProductCard(
                    product: product,
                    onRemove: () => onRemoveFromCart(product),
                  ); 
                },
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Сумма',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 20,
                  ),
                ),
                Text(
                  '${totalSum.toStringAsFixed(2)} Р',
                  style: const TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Дополнительный отступ
            Center(
              child: SizedBox(
                width: 335,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Перейти к оформлению заказа',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 56),
                    backgroundColor: const Color.fromRGBO(26, 111, 238, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartProductCard extends StatefulWidget {
  final Analysis product; // Используем класс Analysis
  final VoidCallback onRemove;

  CartProductCard({
    Key? key,
    required this.product,
    required this.onRemove,
  }) : super(key: key);

  @override
  _CartProductCardState createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  int patientCount = 1; // Количество пациентов

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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.title,
                  style: const TextStyle(
                    fontFamily: 'Montserrat-Regular',
                    fontSize: 16,
                  ),
                  softWrap: true,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.product.duration,
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
                      '${widget.product.price} Р',  
                      style: const TextStyle(
                        fontFamily: 'Montserrat-Regular',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '$patientCount пациент${patientCount > 1 ? 'а' : ''}',
                          style: const TextStyle(
                            fontFamily: 'Montserrat-Light',
                            fontSize: 15,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            if (patientCount > 1) {
                              setState(() {
                                patientCount--; // Уменьшаем количество
                              });
                            }
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              patientCount++; // Увеличиваем количество
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 8, 
              top: 8,   
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.grey, 
                ),
                onPressed: widget.onRemove, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
