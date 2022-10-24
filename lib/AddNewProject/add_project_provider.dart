import 'package:apptodo/AddNewProject/add_project_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addProjectsProvider =
StateNotifierProvider<AddProjectProvider, ProjectState>(
        (ref) => AddProjectProvider());

class AddProjectProvider extends StateNotifier<ProjectState> {
  AddProjectProvider() : super(ProjectState('', null, Icons.circle_rounded));

  void textProjects(String text) {
    state = ProjectState(text, state.color, Icons.circle_rounded);
  }

  void colorProjects(Color color, IconData icon) {
    state = ProjectState(state.text, color, icon);
  }

}