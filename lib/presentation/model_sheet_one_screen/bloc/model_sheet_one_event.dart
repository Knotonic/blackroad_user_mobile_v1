// ignore_for_file: must_be_immutable

part of 'model_sheet_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ModelSheetOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ModelSheetOneEvent extends Equatable {}

/// Event that is dispatched when the ModelSheetOne widget is first created.
class ModelSheetOneInitialEvent extends ModelSheetOneEvent {
  @override
  List<Object?> get props => [];
}
