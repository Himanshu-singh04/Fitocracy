import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  // final int days= 30;
  // final String name = "FLUTTER";

  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Fitocracy"),

      ),
      backgroundColor: Color.fromARGB(95, 76, 175, 79),

      body:SafeArea(
        child: Column(
          children: [
            Center(
                child: Container(
                height: 180,
                width: 2300,
                
                
                     child: CircleAvatar(
                       child: Image
                       (
                       image:AssetImage("assets/images/ladkicover.jpeg"),
                          fit: BoxFit.fill),
                     ),
                   
                 
                 
                color: Color.fromARGB(222, 244, 67, 54)
            ),
             ),

                    
            // Center(
               Container(
                height: 180,
                width: 2300,
                // color: Color.fromARGB(222, 244, 67, 54),
               child:Image(
                 image:AssetImage("assets/images/gym.jpeg"),
                    fit: BoxFit.fill),
                    
                

              
              ),
            // ),

              Center(
                child: Container(
                height: 180,
                width: 2300,
                // color: Color.fromARGB(222, 244, 67, 54),
             child:Image(
                 image:AssetImage("assets/images/fruitbowl.jpeg"),
                    fit: BoxFit.fill),
                

            
            ),
              ),


              Center(
                child: Container(
                height: 185,
                width: 2300,
                // color: Color.fromARGB(222, 244, 67, 54),
              child:Image(
                 image:AssetImage("assets/images/doctor.jpeg"),
                    fit: BoxFit.fill),
                

            
            ),
              ),
          ],
          
          
          
        ),
      ),
    ),
   );
   
    }
 }
//     body: Container(
      
//       width: double.infinity,
//       height: double.infinity,
//       color:Color.fromARGB(135, 76, 175, 79),
//       child:Column(
//         children: [
//           Center(
//             child: Container(
//               width: 00,
//               height: 200,
              
//               child:Image(
//                  image:AssetImage("assets/images/gym.jpeg"),
//                  fit: BoxFit.cover
//             ),
//             //  child:Center(child: Text("Fitness Enthusiast")),
//             ),
//           ),
//         ],
//       ),

      
//       child:Column(
//         children: [
//           Center(
//             child: Container(
//               width: 600,
//               height: 400,
              
//               child:Image(
//                  image:AssetImage("assets/images/doctor.jpeg"),
//                  fit: BoxFit.cover
//             ),
//             //  child:Center(child: Text("Fitness Enthusiast")),
//             ),
//           ),
//         ],
//       ),

      
//       child:Center(
//         child: Container(
//           width: 600,
//           height: 400,
          
//           child:Image(
//              image:AssetImage("assets/images/fruitbowl.jpeg"),
//              fit: BoxFit.cover
//         ),
//         //  child:Center(child: Text("Fitness Enthusiast")),
//         ),
//       ),




//       // xxxxxxxxxxxxxxxxxxxxxxxxxxx

//     // child:Container(
//     //   width: 10,
//     //   height: 10,
//     //   color:Color.fromARGB(223, 244, 67, 54),
//     //   child:Container(
//     //   decoration:BoxDecoration(
//     //    borderRadius: BorderRadius.circular(75),
//     //     image: DecorationImage(
//     //         image: AssetImage(
//     //                 "assets/images/ladkicover.jpeg",
                     
//     //                 ),
//     //         // fit:BoxFit.none
        
//     //   )9
//     // ),
//     // ),
//     //  ),
//     ),
    
//        );
      
//  }
//  }