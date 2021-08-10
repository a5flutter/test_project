import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_pr/model/file.dart';
import 'package:test_pr/service/file_service.dart';


part 'file_event.dart';
part 'file_state.dart';

class FileBloc extends Bloc<FileEvent, FileState> {
  FileBloc() : super(FileInitial());

  IFileService service = FileService();
  List<File> files = [];
  @override
  Stream<FileState> mapEventToState(
      FileEvent event,
      ) async* {
    if (event is GetFiles){
      yield FileInProgress();
      await Future.delayed(Duration(seconds: 2));
      files = await service.getFiles();
      yield GetFileSuccess(files);
    }
    if (event is AddFile){
      yield FileInProgress();
      files.add(service.addFile(files));
      yield GetFileSuccess(files);
    }
  }
}
