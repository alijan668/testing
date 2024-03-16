import 'package:flutter/material.dart';
class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  var weight = TextEditingController();
  var feet = TextEditingController();
  var inch = TextEditingController();
  var result = ('');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        
        title: Center(
          child: Text('BMI CALCULATOR',style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            
          ),),
        ),
        backgroundColor: Color(0xff1A1F38),
      ),


      body: Padding(
        padding: const EdgeInsets.only(left:43 ,right:43, top:43, bottom: 43),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          decoration: BoxDecoration(
            color: Color(0xff1A1F38),
            borderRadius: BorderRadius.circular(15)
          ),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 20,
              ),
                Center(
                  child: Text('Calculate your BMI',
                                 
                   style: TextStyle(
                    color: Colors.white,
                    
                  ),),
                ),

                 SizedBox(
                height: 20,
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Enter your weight',
                  
                   style: TextStyle(
                    color: Colors.white,
                    
                  ),),
                ),

                SizedBox(
                height: 20,
              ),

                SizedBox(
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: weight,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        
                      ),
                      

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.white,
                            
                          ),
                        
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.white,
                            
                          ),
                        ),

                        
                  
                        label: 
                          Text('Enter your weight in KG',style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 160, 160, 160),
                            fontWeight: FontWeight.w100
                            
                          ),),
                        
                      )
                    ),
                  ),
                ),

                 SizedBox(
                height: 25,
              ),

                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Enter your height',
                  
                   style: TextStyle(
                    color: Colors.white,
                    
                  ),),
                ),

                SizedBox(
                height: 20,
              ),

              SizedBox(
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: feet,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        
                      ),
                      

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.white,
                            
                          ),
                        
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.white,
                            
                          ),
                        ),

                        
                  
                        label: 
                          Text('Feet',style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 160, 160, 160),
                            fontWeight: FontWeight.w100
                            
                          ),),
                        
                      )
                    ),
                  ),
                ),


                SizedBox(
                height: 15,
              ),


            SizedBox(
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: inch,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        
                      ),
                      

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.white,
                            
                          ),
                        
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.white,
                            
                          ),
                        ),

                        
                  
                        label: 
                          Text('Inches',style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 160, 160, 160),
                            fontWeight: FontWeight.w100
                            
                          ),),
                        
                      )
                    ),
                  ),
                ),


                SizedBox(
                height: 30,
              ),

              Center(
                  child: Text(result,
                                 
                   style: TextStyle(
                    color: Colors.white,
                    
                  ),),
                ),
                SizedBox(
                height: 10,
              ),

            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: SizedBox(
                width: 1000,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF10606),
                  ),
                  
                  onPressed: (){

                    var wt = weight.text.toString();
                    var ft = feet.text.toString();
                    var inc = inch.text.toString();


                    if (weight!=' ' && feet!=' ' && inch!=' ') {

                      var i_weight = int.parse(wt);
                      var i_feet = int.parse(ft);
                      var i_inch = int.parse(inc);

                      var t_inches = (i_feet*12) + i_inch;
                        var t_cm = t_inches *2.54;
                        var t_meter = t_cm/100;
                        var bmi = i_weight/(t_meter*t_meter);

                      setState(() {
                        

                        result = 'Your BMI is ${bmi.toStringAsFixed(1)}';
                      });

                    }else{
                      setState(() {
                        result = 'please fill all fields';
                      });

                    }
                
                }, 
                
                child: Text('Calculate',style: TextStyle(

                  color: Colors.white,
                ),)),
              ),
            ),


            

          

            ],
          ),
        ),
      )

    );
  }
}