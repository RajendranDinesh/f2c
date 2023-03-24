import 'package:flutter/material.dart';
import 'package:f2c/models/FarmerModel.dart';

class FarmerCard extends StatelessWidget {
  const FarmerCard({
    Key? key,
    required this.farmer,
  }) : super(key: key);

  final Farmer farmer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18.0),),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/farmer_no_pic.png',
                  height: 85,
                  width: 85,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(farmer.name, style: const TextStyle(fontFamily: 'Poppins'),),
                Row(children: [const Icon(Icons.star, color: Colors.orange,)
                  ,Text('${farmer.rating}', style: const TextStyle(fontFamily: 'Poppins'),),],),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    const Icon(Icons.timer_outlined, color: Colors.orange,),
                    Text('${farmer.time} mins \t\t°\t\t ${farmer.distance} km', style: const TextStyle(fontFamily: 'Poppins'),),
                  ],
                )
              ],))
            ],
          ),
        ),
      ),
    );
  }
}
