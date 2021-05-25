// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  Post({
    this.data,
    this.total,
    this.page,
    this.limit,
    this.offset,
  });

  List<Datum> data;
  int total;
  int page;
  int limit;
  int offset;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    total: json["total"],
    page: json["page"],
    limit: json["limit"],
    offset: json["offset"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
    "page": page,
    "limit": limit,
    "offset": offset,
  };
}

class Datum {
  Datum({
    this.owner,
    this.id,
    this.image,
    this.publishDate,
    this.text,
    this.tags,
    this.link,
    this.likes,
  });

  Owner owner;
  String id;
  String image;
  DateTime publishDate;
  String text;
  List<String> tags;
  String link;
  int likes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    owner: Owner.fromJson(json["owner"]),
    id: json["id"],
    image: json["image"],
    publishDate: DateTime.parse(json["publishDate"]),
    text: json["text"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    link: json["link"] == null ? null : json["link"],
    likes: json["likes"],
  );

  Map<String, dynamic> toJson() => {
    "owner": owner.toJson(),
    "id": id,
    "image": image,
    "publishDate": publishDate.toIso8601String(),
    "text": text,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "link": link == null ? null : link,
    "likes": likes,
  };
}

class Owner {
  Owner({
    this.id,
    this.email,
    this.title,
    this.picture,
    this.firstName,
    this.lastName,
  });

  String id;
  String email;
  Title title;
  String picture;
  String firstName;
  String lastName;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    id: json["id"],
    email: json["email"],
    title: titleValues.map[json["title"]],
    picture: json["picture"],
    firstName: json["firstName"],
    lastName: json["lastName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "title": titleValues.reverse[title],
    "picture": picture,
    "firstName": firstName,
    "lastName": lastName,
  };
}

enum Title { MRS, MR, MS, MISS }

final titleValues = EnumValues({
  "miss": Title.MISS,
  "mr": Title.MR,
  "mrs": Title.MRS,
  "ms": Title.MS
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
