part of 'file_bloc.dart';

abstract class FileState extends Equatable {
  const FileState();
}

class FileInitial extends FileState {
  @override
  List<Object> get props => [];
}

class FileInProgress extends FileState {

  @override
  List<Object> get props => [];
}

class GetFileSuccess extends FileState {
  const GetFileSuccess(this.files);

  final List<File> files;

  @override
  List<Object> get props => [files];
}
