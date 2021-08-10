import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pr/bloc/file_bloc/file_bloc.dart';
import 'package:test_pr/ui/home_screen/widgets/file_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    BlocProvider.of<FileBloc>(context).add(const GetFiles());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FileBloc, FileState>(builder: (context, state) {
        if (state is GetFileSuccess) {
          return Stack(
            children: [
              ListView.separated(
                itemCount: state.files.length,
                itemBuilder: (context, index) {
                  return FileListItem(
                      name: state.files[index].name,
                      size: state.files[index].size);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
              Positioned(
                  right: 20,
                  bottom: 20,
                  child: FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<FileBloc>(context).add(const AddFile());
                      },
                      child: Icon(Icons.add)))
            ],
          );
        }
        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}
