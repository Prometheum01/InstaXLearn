part of 'sign_in_bloc_bloc.dart';

abstract class SignInBlocState extends Equatable {
  const SignInBlocState();

  @override
  List<Object> get props => [];
}

final class SignInInitial extends SignInBlocState {}

final class SignInSuccess extends SignInBlocState {}

final class SignInProcess extends SignInBlocState {}

final class SignInFailure extends SignInBlocState {
  final String? message;

  const SignInFailure({required this.message});
}
