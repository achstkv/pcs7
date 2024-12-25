import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft, 
          child: const Text(
            'Эдуард',
            style: TextStyle(
              fontFamily: 'Montserrat-Medium',
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              '+7 900 800-55-33',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'email@gmail.com',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 24),

            ListTile(
              leading: Image.asset(
                'assets/icons/1.Заказы.png',
                height: 40.0,
                width: 40.0,
              ),
              title: Text(
                'Мои заказы',
                style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 17,
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ListTile(
              leading: Image.asset(
                'assets/icons/2.Карты.png',
                height: 40.0,
                width: 40.0,
              ),
              title: Text(
                'Медицинские карты',
                style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 17,
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ListTile(
              leading: Image.asset(
                'assets/icons/3.Адреса.png',
                height: 40.0,
                width: 40.0,
              ),
              title: Text(
                'Мои адреса',
                style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 17,
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ListTile(
              leading: Image.asset(
                'assets/icons/4.Настройки.png',
                height: 40.0,
                width: 40.0,
              ),
              title: Text(
                'Настройки',
                style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 17,
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 40),
            
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Ответы на вопросы',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Light',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    'Политика конфиденциальности',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Light',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    'Пользовательское соглашение',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Light',
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 24),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Выход',
                      style: TextStyle(
                        fontFamily: 'Montserrat-Light',
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
