import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/player_questions/bindings/player_questions_binding.dart';
import '../modules/player_questions/views/player_questions_view.dart';
import '../modules/score_board/bindings/score_board_binding.dart';
import '../modules/score_board/views/score_board_view.dart';
import '../modules/start_game/bindings/start_game_binding.dart';
import '../modules/start_game/views/start_game_view.dart';
import '../modules/subjects/bindings/subjects_binding.dart';
import '../modules/subjects/views/subjects_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.PLAYER_QUESTIONS,
      page: () => const PlayerQuestionsView(),
      binding: PlayerQuestionsBinding(),
    ),
    GetPage(
      name: _Paths.START_GAME,
      page: () => const StartGameView(),
      binding: StartGameBinding(),
    ),
    GetPage(
      name: _Paths.SCORE_BOARD,
      page: () => const ScoreBoardView(),
      binding: ScoreBoardBinding(),
    ),
    GetPage(
      name: _Paths.SUBJECTS,
      page: () => const SubjectsView(),
      binding: SubjectsBinding(),
    ),
  ];
}
