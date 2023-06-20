import 'package:flutter/material.dart';
import 'package:uts_aplikasi_bergerak/components/game_tile.dart';
import 'package:uts_aplikasi_bergerak/models/game.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView(
        children:  [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.gamepad,
                    size: 50,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "CSGO",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.gamepad,
                    size: 50,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "BlackOps",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.gamepad,
                    size: 50,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "CODM",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.gamepad,
                    size: 50,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "GTA",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),
    );
  }
}
