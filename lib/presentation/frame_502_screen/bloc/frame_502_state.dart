// ignore_for_file: must_be_immutable

part of 'frame_502_bloc.dart';

/// Represents the state of Frame502 in the application.
class Frame502State extends Equatable {
  Frame502State({this.frame502ModelObj});

  Frame502Model? frame502ModelObj;

  @override
  List<Object?> get props => [
        frame502ModelObj,
      ];
  Frame502State copyWith({Frame502Model? frame502ModelObj}) {
    return Frame502State(
      frame502ModelObj: frame502ModelObj ?? this.frame502ModelObj,
    );
  }
}
