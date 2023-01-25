import 'dart:async';
import 'dart:math';
import '../domain/entities/news.dart';
import '../domain/i_news_repository.dart';

class MockNewsRepo implements INewsRepository {
  List<String> urls = [
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/00/92/70/98/23/791662140cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/12/99/69/72/13/df8f96b40cd7.jpeg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/07/47/32/88/14/490462940cd7.jpeg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/15/71/17/18/52/e464b5a40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/07/86/07/49/22/360f84840cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/13/70/19/70/09/158d00040cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/07/87/96/69/27/4fb11b240cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/16/07/55/14/68/6e3d76540cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/12/26/79/67/25/9408b7a40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/00/66/51/03/59/8390f6140cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/01/68/66/54/07/4b8179e40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/11/56/24/15/85/a19d26d40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/12/30/98/83/46/a59753e40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/08/35/50/90/76/80369de40cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/14/19/05/60/68/6af4ab240cd7.jpg',
    'https://the-flow.ru/uploads/images/resize/830x0/adaptiveResize/12/64/75/79/81/c33c2eb40cd7.jpg',
  ];
  List<String> titles = ['ASAP Rocky выпустил трек "Same Problems?"',
    'РКН назвал критерии ЛГБТ-пропагады в интернете',
    'Jamie xx заканчивает работу над новым альбомом',
    'Фейсбук* и инстаграм* разрешат показывать женские соски',
    'Слава Мэрлоу объяснился перед казахами',
    'Эминема включили в Зал славы рок-н-ролла',
    'Denderty и ЛСП выпустили сингл "Мрак"',
    'Дидди стал миллиардером',
    '"Мы втроем с крабом и барракудой захуярили медузу": как Джиган попал в больницу на отдыхе',
    'Фараон спросил Lovv66 в комментариях, кто он такой. Что происходит?',
    'Монеточка отреагировала на травлю',
    'Slowthai выпустил сингл и назвал дату выхода нового альбома',
    'Соцсети Даши Корейки и Хилми Форкс внесут в реестр запрещенных сайтов',
    'Соавтор "Рика и Морти" отстранен от работы над новым сезоном из-за обвинений в домашнем насилии',
    'Кайли Дженнер объявила, как теперь зовут ее и Трэвиса Скотта сына',
  ];
  List<String> texts = ['Сингл с альбома "Don’t Be Dumb", который все ждут в этом году.',
    'А еще составил список запрещенных фильмов и сериалов, там — "Горбатая гора" и "Назови меня своим именем".',
  'Рэпер вбил в поиске ютуба "J. Cole type beat" и наткнулся на бит продюсера Bvtman — так и получился трек.',
  'Активисты боролись за это право много лет.',
  'Вот бы все новости были такими.',
  'Меня не должно было быть здесь, ведь я рэпер.',
  'Если чувствуешь себя дединсайд.',
  'Теперь он богаче Канье.',
  'Истории лучше вы сегодня не услышите.',
  'И при чем тут рубашка и Молодой Платон.',
  '"Если вы пытаетесь показать, как меня все вокруг ненавидят, то я вам все равно не поверю".',
  'Что об этом известно.',
  'Вчера на блогеров завели дело о пропаганде ЛГБТ.',
  'Для озвучки главных героев, которые говорили его голосом, выберут других актеров.',
  'Больше не Волк(',

  ];
  @override
  Future getNews() async {
    _getRandom(list) {
      return list.elementAt(Random().nextInt(list.length));
    }
    _generateNews() {
     return News(id: 1, title: _getRandom(titles), text: _getRandom(texts), imageUrl: _getRandom(urls));
    }
    final news = List<News>.generate(40, (int index) => _generateNews());
    return news;

  }

  @override
  Future<void> updateNews(params) {
    // TODO: implement updateNews
    throw UnimplementedError();
  }
}