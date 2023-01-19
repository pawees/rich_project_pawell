import 'dart:async';
import 'dart:math';
import '../domain/entities/news.dart';
import '../domain/i_news_repository.dart';

class MockNewsRepo implements INewsRepository {
  List<String> urls = ['https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/00/92/70/98/23/791662140cd7.jpg',
  'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/12/99/69/72/13/df8f96b40cd7.jpeg',
  'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/07/47/32/88/14/490462940cd7.jpeg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/15/71/17/18/52/e464b5a40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/07/86/07/49/22/360f84840cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/13/70/19/70/09/158d00040cd7.jpg'
  ];
  List<String> titles = ['ASAP Rocky выпустил трек "Same Problems?"',
    'РКН назвал критерии ЛГБТ-пропагады в интернете',
    'Jamie xx заканчивает работу над новым альбомом',
    'Фейсбук* и инстаграм* разрешат показывать женские соски',
    'Слава Мэрлоу объяснился перед казахами',
  ];
  List<String> texts = ['Сингл с альбома "Don’t Be Dumb", который все ждут в этом году.',
    'А еще составил список запрещенных фильмов и сериалов, там — "Горбатая гора" и "Назови меня своим именем".',
  'Рэпер вбил в поиске ютуба "J. Cole type beat" и наткнулся на бит продюсера Bvtman — так и получился трек.',
  'Активисты боролись за это право много лет.',
  'Вот бы все новости были такими.'];
  @override
  Future getNews() async {
    _getRandom(list) {
      return list.elementAt(Random().nextInt(list.length));
    }
    _generateNews() {
     return News(id: 1, title: _getRandom(titles), text: _getRandom(texts), imageUrl: _getRandom(urls));
    }
    final news = List<News>.generate(20, (int index) => _generateNews());
    return news;

  }

  @override
  Future<void> updateNews(params) {
    // TODO: implement updateNews
    throw UnimplementedError();
  }
}