part of 'file_bloc.dart';

abstract class FileEvent extends Equatable {
  const FileEvent();
}

class GetFiles extends FileEvent{
  const GetFiles();

  @override
  List<Object> get props => [];
}

class AddFile extends FileEvent{
  const AddFile();

  @override
  List<Object> get props => [];
}
