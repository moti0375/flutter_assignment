import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'details_screen_event.dart';
part 'details_screen_state.dart';
part 'details_screen_bloc.freezed.dart';

@injectable
class DetailsScreenBloc extends Bloc<DetailsScreenEvent, DetailsScreenState> {
  DetailsScreenBloc() : super(const DetailsScreenState.initial()) {
    on<DetailsScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
