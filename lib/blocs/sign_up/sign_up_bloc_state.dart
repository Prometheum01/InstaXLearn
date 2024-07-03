part of 'sign_up_bloc_bloc.dart';

abstract class SignUpBlocState extends Equatable {
  const SignUpBlocState();

  @override
  List<Object> get props => [];
}

final class SignUpInitial extends SignUpBlocState {}

final class SignUpSuccess extends SignUpBlocState {}

final class SignUpFailure extends SignUpBlocState {}

final class SignUpProcess extends SignUpBlocState {}
