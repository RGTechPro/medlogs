import 'package:flutter/material.dart';
import 'package:medlogs/widget/type_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea
  (
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [

          
        ])
        ,
    body:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
    const Padding(
       padding:  EdgeInsets.symmetric(vertical: 5),
       child:  Center(
          child: Text('MEDLOGS',
           //  textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff89D185),
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
     ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
  child:   Container(
decoration:BoxDecoration(
     border: Border.all(
                color: Colors.blue,
                width: 4.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
) ,

  child:ClipRRect(
    
    borderRadius: BorderRadius.circular(15.0),
    child: Image.network('https://picsum.photos/200')) ,
  ),
),
Row(
  
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
TypeCard(typeName: 'Medicine',),
TypeCard(typeName: 'Medical reports',)

],),
Row(
  
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
TypeCard(typeName: 'Medicine',),
TypeCard(typeName: 'Medical reports',)

],)

      ],
    ) ,
    
      ),
    );
  }
}