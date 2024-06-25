part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loadin;
  const factory UserState.loaded(List<User> data) = _Loaded;
  const factory UserState.error(RequestState requestState) = _Error;
}
