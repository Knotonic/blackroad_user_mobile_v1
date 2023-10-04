// ignore_for_file: must_be_immutable

part of 'frame_503_bloc.dart';

/// Represents the state of Frame503 in the application.
class Frame503State extends Equatable {
  Frame503State({this.frame503ModelObj});

  Frame503Model? frame503ModelObj;

  @override
  List<Object?> get props => [
        frame503ModelObj,
      ];
  Frame503State copyWith({Frame503Model? frame503ModelObj}) {
    return Frame503State(
      frame503ModelObj: frame503ModelObj ?? this.frame503ModelObj,
    );
  }
}
