class CatalogModel {
  static  List<Item> products = [
    Item(
        id: 1,
        name: "Iphone 12Pro",
        description: "iphone ",
        price: 1299,
        color: "white",
        image:
            "https://imgs.search.brave.com/94j4PNijz11vtJhBTDvEvB2JVeOdHeMorOEB8o_3Wt0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/OTEtaW1nLmNvbS9n/YWxsZXJ5X2ltYWdl/c191cGxvYWRzLzcv/OS83OWQ2ZTVhZDQ5/MzQ1ZTk4NjE4Yzhl/MDA4MzM0YjRlNWNm/NDg0NmE5LmpwZz90/cj1oLTU1MCx3LTAs/Yy1hdF9tYXg")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
  
  static fromMap(Map<String, dynamic> map){// map to class conversion
    Item(
      id: map["id"],
      name: map["name"],
      description: map["description"], 
      price: map["price"],
      color: map["color"], 
      image: map["image"]);
  }
  toMap()=>{// class to map conversion
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "color": color,
    "image": image,

  };
}
