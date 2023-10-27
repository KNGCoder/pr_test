import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pr_test/Pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void onTap() {
    Navigator.push(context,
        PageTransition(child: const HomePage(), type: PageTransitionType.fade));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF486c5e),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Ответьте "Да" или "Нет".\nПроверьте свои знания в познавательной викторине',
                style: TextStyle(
                  color: Color(0xFFd7c6b4),
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF486c5e),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFc1986c), 
                    width: 1),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () => onTap(),
                  child: const Text(
                    'Пройти тест',
                    style: TextStyle(color: Color(0xFFc1986c), fontSize: 35, fontWeight: FontWeight.w200),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
