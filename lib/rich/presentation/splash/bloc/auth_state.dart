part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class CheckAuthState extends AuthInitial {
  final String nextScreen;

  CheckAuthState(this.nextScreen);
  @override
  List<Object> get props => [nextScreen];

}
