part of 'login_bloc.dart';

class LoginState extends Equatable {
  final FormzStatus status;
  final Username username;
  final Password password;

  const LoginState({
    this.status = FormzStatus.pure,
    this.password = const Password.pure(),
    this.username = const Username.pure(),
  });

  LoginState copyWith({
    FormzStatus? status,
    Password? password,
    Username? username,
  }) {
    return LoginState(
      status: status ?? this.status,
      password: password ?? this.password,
      username: username ?? this.username,
    );
  }

  @override
  List<Object?> get props => [status, username, password];
}
