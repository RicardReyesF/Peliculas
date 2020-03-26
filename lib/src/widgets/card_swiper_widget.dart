import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperCard extends StatelessWidget {
  
  final List<dynamic> peliculas;
  SwiperCard({ @required this.peliculas});
  


  @override
  Widget build(BuildContext context) {

    final _sizeScreen = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0) ,
      child: Swiper(  
         //pagination: new SwiperPagination(),
        //control: new SwiperControl(),
        itemCount: 4,
        layout: SwiperLayout.STACK,
        itemWidth: _sizeScreen.width * 0.5 ,
        itemHeight: _sizeScreen.width * 0.7 ,
        itemBuilder: (BuildContext context, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network("http://via.placeholder.com/350x150",
          fit: BoxFit.cover),
          );
           

        },

      ),
    );
  }
}