import 'package:flutter/material.dart';
import '../models/game.dart';

class GameTile extends StatelessWidget {
  Game game;
  GameTile({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // game pic


          // deskripsi

          // harga dan detail

          //button add to keranjang
        ],
      ),
    );
  }
}