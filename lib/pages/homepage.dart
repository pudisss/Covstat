import 'package:covstat/backend/data/data.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "../backend/api/api.dart";
import "package:fl_chart/fl_chart.dart";
import "package:flutter_svg/flutter_svg.dart";




class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // Gridview container width and height
  double gridviewwidth = double.parse("158");
  double gridviewheight = double.parse("207.78");


  

  @override
  Widget build(BuildContext context) {
    // Variable with un duplicated variable
    dynamic countryname = notcountryname.toSet().toList();
    dynamic countrycases = notcountrycases.toSet().toList();
    countryflag = countryname;

    dynamic realflag = flagcountry.toSet().toList();

   
    
    
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                height: 451,
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                  future: worldstatic(),
                  builder: (context, AsyncSnapshot snapshot) {
                   
                    return GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: (gridviewwidth / gridviewheight),
                      crossAxisCount: 2,
                      children: [
                        Container(
                          width: gridviewwidth,
                          height: gridviewheight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Color.fromRGBO(228, 228, 228, 0.6))
      
                          ),
                          child: Container(
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("Total Cases", style: TextStyle(fontFamily: "Poppins", fontSize: 17, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 153, 153, 1)))
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(totalcase.toString(), style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black))
                                      ),
                                      
                                    ]
                                  )
                                ),
                                
                                
                              
                            
                          ),
                          
      
      
                        
                        Container(
                          width: gridviewwidth,
                          height: gridviewheight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Color.fromRGBO(228, 228, 228, 0.6))
      
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("Recovered Cases", style: TextStyle(fontFamily: "Poppins", fontSize: 17, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 153, 153, 1)))
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(recovered.toString(), style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black))
                                      ),
                                    ]
                                  )
                                ),
                                
                                
                           
                        Container(
                          width: gridviewwidth,
                          height: gridviewheight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Color.fromRGBO(228, 228, 228, 0.6))
      
                          ),
                          child: Container(
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("Active Cases", style: TextStyle(fontFamily: "Poppins", fontSize: 17, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 153, 153, 1)))
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(activecase.toString(), style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black))
                                      ),
                                    ]
                                  )
                                ),
                                
                        ),
                        Container(
                          width: gridviewwidth,
                          height: gridviewheight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Color.fromRGBO(228, 228, 228, 0.6))
      
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("Total Death", style: TextStyle(fontFamily: "Poppins", fontSize: 17, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 153, 153, 1)))
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(totaldeath.toString(), style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black))
                                      ),
                                    ]
                                  )
                                ),
                                
                                
                              
                            
      
                      ]
      
                    );
                  }
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 347,
                height: 656,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Color.fromRGBO(228, 228, 228, 0.6),)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text("Live Reports", style: TextStyle(fontFamily: 'Poppins', fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black,))
                                ),
                                Container(
                                  child: Text("Top five countries", style: TextStyle(fontFamily: "Poppins", fontSize: 13, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 153, 153, 1))),
                                )
                              ]
                            )
                          ),
                          Container(
                            child: GestureDetector(
                              child: Icon(Icons.arrow_back_ios, color: Colors.black)
                            )
                          ),
                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 20),
                      child: FutureBuilder(
                        future: top5countries(),
                        builder: (context, AsyncSnapshot snapshot) {
                          print(countryname);
                         return Column(
                          children: List.generate(countryname.length, (index) {
                            
                            
                            return Container(
                              width: 325,
                              height: 80,
                              margin: EdgeInsets.only(top: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1, color: Color.fromRGBO(228, 228, 228, 0.6))
                              ),
                              child: Row(
                                
                                children: [
                                  
                                  
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(countryname[index], style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w300,))
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(countrycases[index].toString(), style: TextStyle(fontFamily: "Poppins", fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black,))
                                  )
                                ]
                              )

                            );
                          })
                         );
                        }
                      )
                    )
                  ]
                )
              )
            ]
      
          )
        ),
      )
    );
  }
}