
import 'package:flutter/material.dart';
import 'package:pelicula/src/provaiders/peliculas_provaider.dart';
import 'package:pelicula/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  PeliculasProvaider peliculasProvaider = new PeliculasProvaider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Destacados del Mes'),
      backgroundColor: Colors.orangeAccent,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed:(){

          })
      ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swiperTarjet()
          ],
        )
      )
      
    );
  }

  Widget _swiperTarjet() {
    return FutureBuilder(
      
    ); 

    /*
    peliculasProvaider.getPopulares();
    return SwiperCard(
      peliculas: [1,2,4,5,6]
    );
*/
  }
}