import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class CooffeeTile extends StatelessWidget {
  const CooffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset('lib/images/brownee.webp'),
              borderRadius: BorderRadius.circular(12),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 12),
              child: Column(
                children: [
                  const Text(
                    'Brownee',
                    style: TextStyle(fontSize: 23),
                  ),
                  Text(
                    'With Oat milk',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            //   Price tag + add button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ 4.20'),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
