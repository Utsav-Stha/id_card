import 'package:flutter/material.dart';
import 'package:id_card/student_description.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Id Card'),
        titleTextStyle: const TextStyle(
            fontSize: 38, fontWeight: FontWeight.w700, color: Colors.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/logo.JPG'),
                  ),
                  Column(
                    children: [
                      Text(
                        'St.Xaviers\' College',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Maitighar, Kathmandu',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/spider_man.jpg'),
              ),
              const SizedBox(
                height: 18,
              ),
             const StudentDescription(),
              const SizedBox(
                height: 18,
              ),
              Image.asset(
                'assets/bar_code.png',
                height: 40,
                width: 250,
              ),
              const Text('\n Maitighar,Kathmandu'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('www.sxc.edu.np '),
                  Text(' 01-4005001'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
