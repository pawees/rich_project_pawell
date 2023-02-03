import 'package:rich_project_pawell/rich/domain/i_builder.dart';

abstract class AppRunner {

  Future<void> preloadData();

  Future<void> run(AppBuilderInterface appBuilder);

}