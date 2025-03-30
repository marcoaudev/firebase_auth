import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String? name;
  final String? photoURL;

  const UserEntity({
    required this.id,
    required this.email,
    this.name,
    this.photoURL,
  });

  static const UserEntity empty = UserEntity(
    id: '',
    name: '',
    email: '',
    photoURL: '',
  );

  bool get isEmpty => this == UserEntity.empty;

  @override
  List<Object?> get props => [id, name, email, photoURL];
}