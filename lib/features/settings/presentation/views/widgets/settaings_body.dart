import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class SettaingsBody extends StatelessWidget {
  const SettaingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
      body: Column(
        children: [
          SizedBox(
            height: 330,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Appcolors.beige,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200))),
                ),
                Positioned(
                    top: 100,
                    bottom: 84,
                    left: 130,
                    right: 100,
                    child: Text(
                      "الملف الشخصي",
                      style: Styles.textsty20.copyWith(
                          color: Textcolor.black, fontWeight: FontWeight.w500),
                    )),
                const Positioned(
                    top: 150,
                    right: 145,
                    left: 145,
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Appcolors.brown850,
                        //backgroundImage: AssetImage("assets/images/mo.jpg"),
                        child: SizedBox(
                          width: 95,
                          height: 95,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/mo.jpg"),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 260,
                    right: 145,
                    left: 160,
                    child: Text(
                      "محمد علاء",
                      style: Styles.textsty20.copyWith(color: Textcolor.black),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
