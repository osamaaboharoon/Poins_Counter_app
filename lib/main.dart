import 'package:flutter/material.dart';

void main(){
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int numTeamA = 0 ;
  int numTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
              title:Text('Points Counter',style: TextStyle(color: Colors.white) ,) ,
              backgroundColor: Colors.orange,
            ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               
                Column(
                  children: [
                    Text('Team A',style: TextStyle(fontSize: 22),),
                    Text('$numTeamA',style: TextStyle(fontSize: 200),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.black),
                        minimumSize: Size(20, 50),
                        
                        ),
                      onPressed: (){setState(() {
                        numTeamA++;
                      });}, 
                      child: Text('Add 1 Point',style: TextStyle(fontSize: 18,
                      color: Colors.black
                
                      ),)
                      ),
                 SizedBox(height: 20,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.black),
                        minimumSize: Size(150, 50),
                        
                        ),
                      onPressed: (){
                       setState(() {
                         numTeamA+=2;
                         
                       });
                      }, 
                      child: Text('Add 2 Point',style: TextStyle(fontSize: 18,
                      color: Colors.black
                
                      ),)
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.black),
                        minimumSize: Size(150, 50),
                        
                        ),
                      onPressed: (){setState(() {
                        numTeamA+=3;
                      });}, 
                      child: Text('Add 3 Point',style: TextStyle(fontSize: 18,
                      color: Colors.black
                
                      ),)
                      ),
                      
                  ],
                ),
                SizedBox(height: 450,
                  child: VerticalDivider(thickness: 1,color: Colors.grey,)),
                Column(
                  children: [
                    Text('Team B',style: TextStyle(fontSize: 22),),
                    Text('$numTeamB',style: TextStyle(fontSize: 200),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.black),
                        minimumSize: Size(20, 50),
                        
                        ),
                      onPressed: (){setState(() {
                        numTeamB++;
                      });}, 
                      child: Text('Add 1 Point',style: TextStyle(fontSize: 18,
                      color: Colors.black
                
                      ),)
                      ),
                 SizedBox(height: 20,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.black),
                        minimumSize: Size(150, 50),
                        
                        ),
                      onPressed: (){setState(() {
                        numTeamB+=2;
                      });}, 
                      child: Text('Add 2 Point',style: TextStyle(fontSize: 18,
                      color: Colors.black
                
                      ),)
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.grey),
                        minimumSize: Size(150, 50),
                        
                        ),
                      onPressed: (){setState(() {
                        numTeamB+=3;
                      });}, 
                      child: Text('Add 3 Point',style: TextStyle(fontSize: 18,
                      color: Colors.black
                
                      ),)
                      ),
                      
                  ],
                ),
                
              ],
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              
              style:ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(150, 50),) ,
              onPressed: (){setState(() {
                numTeamA=0;
                numTeamB=0;
              });},
              child: Text('Reset',style: TextStyle(color: Colors.black,fontSize: 24),))
          ],
        ),
      ),
    );
  }
}