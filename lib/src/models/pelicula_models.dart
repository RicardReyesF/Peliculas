class Peliculas{
  List<Pelicula> items = new List();
  Peliculas();
  Peliculas.fromJsonList(List<dynamic> jsonlist){

    if(jsonlist == null) return;

    for( var item in jsonlist){
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }

  }

}

class Pelicula {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });
  Pelicula.fromJsonMap(Map<String,dynamic> json){
    popularity        = json['popularity'];
    voteCount         = json['vote_count'] ;
    video             = json['video'];
    posterPath        = json['poster_path'];
    id                = json['id'];
    adult             = json['adult'];
    backdropPath      = json['backdrop_path'];
    originalLanguage  = json['original_language'];
    originalTitle     = json['original_title'];
    genreIds          = json['genre_ids'].cast<int>();
    title             = json['title'];
    voteAverage       = json['vote_avarage'] ;
    overview          = json['overview'];
    releaseDate       = json['release_date'];    
  }
}
