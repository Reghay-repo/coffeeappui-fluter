import "package:coffeeappui/components/coffe_tile.dart";
import "package:coffeeappui/components/coffe_type.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.2),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //   heading text
          Text(
            'Find The best coffee for you ',
            style: GoogleFonts.bebasNeue(fontSize: 62),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Find your coffee ...',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // types of coffees

          Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeType(
                  isSelected: true,
                  name: 'Latte',
                ),
                CoffeeType(
                  isSelected: false,
                  name: 'Cappuchino',
                ),
                CoffeeType(isSelected: false, name: 'Milk shake'),
              ],
            ),
          ),

          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CooffeeTile(),
            ],
          ))
          //   Search bar
          //   Horizontal scroll coffee type
          //   Coffee overview
        ],
      ),
    );
  }
}
