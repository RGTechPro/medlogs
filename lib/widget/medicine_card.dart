import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({super.key});
//add a constructor and take inputs of medicine name, taking time, qauntity in mg
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.grey.withOpacity(.01)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, .5),
              spreadRadius: .1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.medication_rounded),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IbuBrufene',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text('Before sleeping')
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFF4EE),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey.withOpacity(.01)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "500",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'mg',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
