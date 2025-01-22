class Album {
  final String name;
  final String imageUrl;
  final String releaseDate;
  final int total_tracks;

  Album({required this.name, required this.imageUrl, required this.releaseDate, required this.total_tracks});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      imageUrl: json['images'][0]['url'],
      releaseDate: json['release_date'],
      total_tracks: json['total_tracks'],
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "imageUrl": imageUrl,
    "releaseDate" : releaseDate,
    "total_tracks": total_tracks,
  };

  @override
  String toString() {
    return 'Album(name: $name, imageUrl: $imageUrl, releaseDate : $releaseDate, total_tracks : $total_tracks)';
  }
}