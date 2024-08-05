import 'package:flutter/material.dart';
import 'package:rent_car_app/screens/login.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/rent car .jpeg',
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'استأجر سيارتك الان!',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'TheYear',
                color: Color.fromARGB(255, 21, 70, 156),
                fontStyle: FontStyle.italic),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              'احجز سيارتك الآن، وسنقوم بتوصيلها إلى باب منزلك في أسرع وقت ممكن ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontFamily: 'TheYear',
              ),
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 70, 156),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' اضغط هنا',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'TheYear',
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
