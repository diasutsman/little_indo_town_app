import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_use_credentials_state.dart';

class RegisterUseCredentialsCubit extends Cubit<RegisterUseCredentialsState> {
  RegisterUseCredentialsCubit() : super(RegisterUseEmail());

  void useEmail() {
    emit(RegisterUseEmail());
  }
  void usePhoneNumber() {
    emit(RegisterUsePhoneNumber());
  }
}
