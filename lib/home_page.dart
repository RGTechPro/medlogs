import 'package:flutter/material.dart';
import 'package:medlogs/pdf_scan.dart';
import 'package:medlogs/report.dart';
import 'package:medlogs/widget/type_card.dart';
import 'medicine.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Center(
            child: Text(
              'MEDLOGS',
              //  textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Pacifico',
                  color: Color(0xffEE4B2B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network('https://picsum.photos/200')),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TypeCard(
              typeName: 'Medicine',
              page: () {
                  Navigator.push(
              context, MaterialPageRoute(builder: (context) => MedicinePage()));
              },
            ),
            TypeCard(
              typeName: 'Medical reports',
              page: (){
                   Navigator.push(
              context, MaterialPageRoute(builder: (context) => ReportPage()));
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TypeCard(
              typeName: 'PDF SCAN',
              page: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PDFScanScreen(),)),
            ),
            TypeCard(
              typeName: 'Medical reports',
            )
          ],
        )
      ],
    );
  }
}
