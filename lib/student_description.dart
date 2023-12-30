import 'package:flutter/material.dart';
import 'package:id_card/widgets.dart';

class StudentDescription extends StatelessWidget {
  const StudentDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            idCardRow('Name : ', 'Utsav Shrestha'),
            idCardRow('Age : ', '22'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            idCardRow('Department : ', 'CSIT'),
            idCardRow('Roll no : ', '40'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            idCardRow('Address : ', 'Teku,Kathmandu'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            idCardRow('Blood Type : ', 'O-'),
          ],
        ),
      ],
    );
  }
}
