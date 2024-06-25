import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_flutter/src/core/services/request_state.dart';
import 'package:technical_test_flutter/src/features/users/domain/entities/user.dart';
import 'package:technical_test_flutter/src/features/users/domain/usecase/get_user/get_user.dart';
import 'package:technical_test_flutter/src/features/users/domain/usecase/get_user/get_user_params.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUser _getUser;
  UserBloc(this._getUser) : super(const _Initial()) {
    on<_GetUsers>((event, emit) async {
      emit(const UserState.loading());
      var result = await _getUser.call(GetUserParams(event.page));
      result.fold(
        (l) {
          emit(UserState.error(RequestState.error(l.getErrorMessage())));
        },
        (r) {
          emit(UserState.loaded(r));
        },
      );
    });
  }
}
