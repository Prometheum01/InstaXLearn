part of 'sign_in_bloc_bloc.dart';

abstract class SignInBlocEvent extends Equatable {
  const SignInBlocEvent();

  @override
  List<Object> get props => [];
}

class SignInRequired extends SignInBlocEvent {
  final String email;
  final String password;

  const SignInRequired({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class SignOutRequired extends SignInBlocEvent {
  const SignOutRequired();

  @override
  List<Object> get props => [];
}
