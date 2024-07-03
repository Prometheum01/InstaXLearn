import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_up_bloc_event.dart';
part 'sign_up_bloc_state.dart';

class SignUpBlocBloc extends Bloc<SignUpEvent, SignUpBlocState> {
  final UserRepository _userRepository;

  SignUpBlocBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(SignUpInitial()) {
    on<SignUpRequired>((event, emit) async {
      emit(SignUpProcess());
      try {
        MyUser myUser =
            await _userRepository.signUp(event.myUser, event.password);

        await _userRepository.setUserData(myUser);

        emit(SignUpSuccess());
      } catch (e) {
        log(e.toString());
        emit(SignUpFailure());
      }
    });
  }
}
