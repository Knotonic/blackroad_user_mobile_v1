// ignore_for_file: must_be_immutable

part of 'member_one_bloc.dart';

/// Represents the state of MemberOne in the application.
class MemberOneState extends Equatable {
  MemberOneState({
    this.messageController,
    this.memberOneModelObj,
  });

  TextEditingController? messageController;

  MemberOneModel? memberOneModelObj;

  @override
  List<Object?> get props => [
        messageController,
        memberOneModelObj,
      ];
  MemberOneState copyWith({
    TextEditingController? messageController,
    MemberOneModel? memberOneModelObj,
  }) {
    return MemberOneState(
      messageController: messageController ?? this.messageController,
      memberOneModelObj: memberOneModelObj ?? this.memberOneModelObj,
    );
  }
}
