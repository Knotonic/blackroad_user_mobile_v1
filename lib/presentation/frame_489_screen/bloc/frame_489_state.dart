// ignore_for_file: must_be_immutable

part of 'frame_489_bloc.dart';

/// Represents the state of Frame489 in the application.
class Frame489State extends Equatable {
  Frame489State({this.frame489ModelObj});

  Frame489Model? frame489ModelObj;

  @override
  List<Object?> get props => [
        frame489ModelObj,
      ];
  Frame489State copyWith({Frame489Model? frame489ModelObj}) {
    return Frame489State(
      frame489ModelObj: frame489ModelObj ?? this.frame489ModelObj,
    );
  }
}
