import 'package:flutter/material.dart';
import 'package:rent_car_app/widgets/splash.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSecure = true;
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/login.png',
              height: 350,
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'تسجيل الدخول ',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'TheYear',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailContoller,
                    textAlign: TextAlign.right, // محاذاة النص إلى اليمين
                    textDirection:
                        TextDirection.rtl, // تعيين اتجاه النص إلى اليمين
                    decoration: const InputDecoration(
                      hintText: 'الايميل',
                      hintStyle: TextStyle(
                        fontFamily: 'TheYear',
                      ),
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    obscureText: isSecure,
                    controller: passwordContoller,
                    textAlign: TextAlign.right, // محاذاة النص إلى اليمين
                    textDirection:
                        TextDirection.rtl, // تعيين اتجاه النص إلى اليمين
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور',
                      hintStyle: const TextStyle(
                        fontFamily: 'TheYear',
                      ),
                      suffixIcon: const Icon(Icons.lock),
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecure = !isSecure;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      String email = emailContoller.text;
                      String password = passwordContoller.text;

                      if (email == email && password == password) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Splashscreen(),
                            ));
                      } else {
                        print('invalid credentials');
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 21, 70, 156),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'TheYear',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
