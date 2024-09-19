import 'package:flutter/material.dart ';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
        Container(
          margin: EdgeInsets.only(top: 40,left: 20,right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
                hintText: "Search Pancake",

                prefixIcon: Padding(
                    padding:const EdgeInsets.all(12),

                child: SvgPicture.asset('assets/icons/Search.svg'),
                ),
              suffixIcon:  Container(


              child: IntrinsicHeight(
              child: Row (
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Color(0xFF000000),
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),


              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SvgPicture.asset('assets/icons/Filter.svg'),
              ),
                ],
              ),
              ),

              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),

            ),
          ),
        ),
      ]
      ),
    );
  }

  AppBar appBar() {
    return AppBar(

      backgroundColor: Color(0xFFFFFFFFF),
      elevation: 0,
      title: Text("breakfast",
      style: TextStyle(
        color: Colors.redAccent[400],

        fontSize: 20,
        fontWeight: FontWeight.bold,


      ),

      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: (){

        },
        child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),

        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius:BorderRadius.circular(10),



        ),

        child: SvgPicture.asset(

            'assets/icons/Arrow - Left 2.svg'),
             height: 20,
             width: 20,
      ))
      ,

      actions: [
        GestureDetector(
          onTap: (){

          },




       child: Container(
          alignment: Alignment.center,
          width:37,

          margin: EdgeInsets.all(10),

          decoration: BoxDecoration(

            color: Colors.white,
            borderRadius:BorderRadius.circular(10),
          ),

          child: SvgPicture.asset(

              'assets/icons/dots.svg'),

        ),),

      ],

    );
  }
}
