// ignore_for_file: must_be_immutable

part of 'model_sheet_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ModelSheet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ModelSheetEvent extends Equatable {}

/// Event that is dispatched when the ModelSheet widget is first created.
class ModelSheetInitialEvent extends ModelSheetEvent {
  @override
  List<Object?> get props => [];
}
