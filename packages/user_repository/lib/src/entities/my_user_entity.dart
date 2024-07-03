import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? picture;

  const MyUserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.picture,
  });

  Map<String, Object?> toDocument() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'picture': picture.toString(),
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> document) {
    return MyUserEntity(
      id: document['id'] as String,
      email: document['email'] as String,
      name: document['name'] as String,
      picture: document['picture'] as String,
    );
  }

  @override
  List<Object?> get props => [id, email, name, picture];

  @override
  String toString() {
    return '''
    User Entity
    {
    id: $id
    email: $email
    name: $name
    picture: $picture
    }
    ''';
  }
}
