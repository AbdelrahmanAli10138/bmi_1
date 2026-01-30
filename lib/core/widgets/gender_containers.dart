import 'package:flutter/material.dart';

class MaleContainer extends StatelessWidget {
  const MaleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 111.31,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.asset("assets/male.png", fit: BoxFit.cover),
    );
  }
}

class FemaleContainer extends StatelessWidget {
  const FemaleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 111.31,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.asset("assets/female.png", fit: BoxFit.cover),
    );
  }
}
