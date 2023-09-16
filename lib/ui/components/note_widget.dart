import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black87,
      ),
      child: const Column(
        children: [
          Text(
            "Ey dindosh qo'ldan kelgancha barcha namozlarni maschitda o'qi va bo'sh vaqtingda ilm ol, zikrdan uzoqlashma, ota-onang bilan yaxshi so'z ila muomila qil. Gunohlaringni eslab tavba qil ! Allohning rahmatidan umidingni uzma !!!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
          ),
          Text(
            "Bu eslatma avvalo o'zimga keyin esa senga dindoshim !!!",
            textAlign: TextAlign.end,
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
          )
        ],
      ),
    );
  }
}
