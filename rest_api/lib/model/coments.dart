import 'dart:convert';
//string to map =>decode
List<Coments> comentsFromJson(String str) => List<Coments>.from(json.decode(str).map((x) => Coments.fromJson(x)));

//encode map to string
String comentsToJson(List<Coments> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Coments {
    int postId;
    int id;
    String name;
    String email;
    String body;

    Coments({
        required this.postId,
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    factory Coments.fromJson(Map<String, dynamic> json) => Coments(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}