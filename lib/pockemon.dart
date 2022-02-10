class pockemon {
  var name;
  var url;

  pockemon(this.name, this.url);


  pockemon.fromJson(Map<String, dynamic> json) :
      name = json['name'],
      url = json['url'];

  @override
  String toString() {
    return 'pockemon{name: $name, url: $url}';
  }
}