import 'dart:math';
import 'package:flutter/material.dart';

final randomizer =Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentdiceroll =2;
  void rolldice(){
    setState(() {
       currentdiceroll=randomizer.nextInt(6)+1;
    });
    
  }
  @override
  Widget build(context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('assets/images/dice-$currentdiceroll.png',width: 150,),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: rolldice,
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 246, 245, 245),
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )
                ),
                child: const Text('Roll dice'))
            ],);
  }
}