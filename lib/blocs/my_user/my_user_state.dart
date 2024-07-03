part of 'my_user_bloc.dart';

enum MyUserStatus { success, loading, failure }

class MyUserState extends Equatable {
  final MyUserStatus myUserStatus;
  final MyUser? user;

  const MyUserState._({this.myUserStatus = MyUserStatus.loading, this.user});

  const MyUserState.loading() : this._();

  const MyUserState.success(MyUser user)
      : this._(myUserStatus: MyUserStatus.success, user: user);

  const MyUserState.failure() : this._(myUserStatus: MyUserStatus.failure);

  @override
  List<Object?> get props => [myUserStatus, user];
}
