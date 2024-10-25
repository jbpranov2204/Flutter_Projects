import 'package:flutter/material.dart';
import 'package:flutter_application_2/Whatsapp_UI/LIstTile.dart';
import 'package:flutter_application_2/Whatsapp_UI/Pages/Wha_models.dart';


class StoreWidget_ extends StatelessWidget {
   StoreWidget_({super.key});
   
   final List<User> storeList = [
    User(
      userImage: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRy5QMODyHm-LaMpgXOqMIUHPbQ-Y51jAZR_UJYC-9Dv1IL3ovh',
      userSubText: 'hey, how are you',
      userText: 'Rivan Ravat',
      userTime: '3:53 pm'
    ),
    User(
      userImage: 'https://edm.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTUyOTgxMDkwNDIyNzYxMDgw/marshmello.jpg',
      userSubText: 'Hello Whats up',
      userText: 'John Doe',
      userTime: '2:25 pm'
    ),
    User(
      userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmNPYAv1woG0AF9L-4kAzxc_fquCriHSjVMA&s',
      userSubText: 'Where are you?',
      userText: 'Mom',
      userTime: '3:53 pm'
    ),
    User(
      userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNnFLuFB9QVekCl4EmxpL9X7evJfkX5F78bg&s',
      userSubText: 'You Slept?',
      userText: 'Dad',
      userTime: '3:53 pm'
    ),
    User(
      userImage: 'https://th-thumbnailer.cdn-si-edu.com/bgmkh2ypz03IkiRR50I-UMaqUQc=/1000x750/filters:no_upscale():focal(1061x707:1062x708)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/55/95/55958815-3a8a-4032-ac7a-ff8c8ec8898a/gettyimages-1067956982.jpg',
      userSubText: 'Watch it',
      userText: 'Uncle B',
      userTime: '3:53 pm'
    ),
    User(
      userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnBwwJU1X27dEAKnJBFTGZeD0K3kV63oQKEQ&s',
      userSubText: 'wanna do it?',
      userText: 'Mogger',
      userTime: '3:53 pm'
    ),
    User(
      userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw96nxZ1_JP14vQQJ2ucqvWsjdOOj0k5Xi4w&s',
      userSubText: 'hey bud',
      userText: 'Jesse Pinkman',
      userTime: '3:53 pm'
    ),
   ];


  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: ListView.builder(
        itemCount: storeList.length,
        itemBuilder: (context, index){
          final x = storeList[index];
          return ListtileCustom(
            ima: x.userImage!,
            tex: x.userText!,
            sutex: x.userSubText!,
             tim: x.userTime!
             );
        },
      ),
    );
  }
}