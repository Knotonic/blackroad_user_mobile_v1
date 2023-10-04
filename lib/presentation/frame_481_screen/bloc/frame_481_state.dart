// ignore_for_file: must_be_immutable

part of 'frame_481_bloc.dart';

/// Represents the state of Frame481 in the application.
class Frame481State extends Equatable {
  Frame481State({this.frame481ModelObj});

  Frame481Model? frame481ModelObj;

  @override
  List<Object?> get props => [
        frame481ModelObj,
      ];
  Frame481State copyWith({Frame481Model? frame481ModelObj}) {
    return Frame481State(
      frame481ModelObj: frame481ModelObj ?? this.frame481ModelObj,
    );
  }
}
