import 'package:exfit/models/exercise.dart';
import 'package:exfit/services/excercises_service.dart';
import 'package:exfit/services/muscles_services.dart';
import '../widgets/scrolled_types.dart';
import 'package:flutter/material.dart';
import '../widgets/exercise.dart';

class ExercisesScreen extends StatefulWidget {
  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  final List<Exercise> _exercises = [];
  final ExercisesService exercisesService = ExercisesService();

  bool _hasMore = false;
  bool _isLoading = false;

  int _page = 0;

  @override
  void initState() {
    _isLoading = true;
    _hasMore = true;
    super.initState();
    _loadMore();
  }

  void _loadMore() {
    print('load more data');
    _isLoading = true;
    _page++;
    exercisesService.fetchData(100, _page).then((List<Exercise> fetchedList) {
      if (fetchedList.isEmpty) {
        setState(() {
          _isLoading = false;
          _hasMore = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _exercises.addAll(fetchedList);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exfit'),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              ScrolledTypes(),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (ctx, i) => SizedBox(height: 10),
                  padding: EdgeInsets.all(5),
                  itemBuilder: (context, index) {
                    if (index >= _exercises.length) {
                      if (!_isLoading) {
                        _loadMore();
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ExerciseWidget(
                      exercise: _exercises[index],
                    );
                  },
                  itemCount:
                      _hasMore ? _exercises.length + 1 : _exercises.length,
                ),
              ),
            ],
          ),
        ));
  }
}
