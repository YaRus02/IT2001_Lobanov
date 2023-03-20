import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lab4',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  bool pressLike = false;
  int likeCount = 227;


 void likeBut() {
    setState(() {
      pressLike = !pressLike;
      if (pressLike) {
        likeCount++;
      } else {
        likeCount--;
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView (
        children:[
          const Expanded(child: Image(image: NetworkImage ('https://tvkrasnodar.ru/upload/iblock/f35/f3597ad2160b2a3b9ef4110709bd44e6.jpg'),),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text("Общежитие № 18", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0), ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30.0, 0.0,0.0 ,0.0 ),
                    child : const Text("Краснодар, ул. Калинина, 13/18", style: TextStyle(color: Colors.grey, fontSize: 10),),
                  ),
                ],

              ),
              Column(
                children: const [
                  // подгонка под макет
                  SizedBox(width: 100,),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: likeBut,
                        icon: (pressLike) ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_border, color: Colors.red),
                      ),
                      Text("$likeCount", style: const TextStyle(fontSize: 12),),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.phone), color: Colors.green,),
              IconButton(onPressed: () => launchUrl(Uri.parse('https://yandex.ru/maps/-/CCUSMPwgHC')),
                icon: const Icon(Icons.navigation_rounded), color: Colors.green,),
              IconButton(onPressed:  () { FlutterShare.share(title: 'Поделиться',
                  text: 'Ссылка на карту' ,linkUrl: 'https://yandex.ru/maps/-/CCUSMPwgHC'); },
                  icon: const Icon(Icons.share_outlined), color: Colors.green,),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Позвонить', style: TextStyle (color: Colors.green),),
              Text('Маршрут', style: TextStyle (color: Colors.green),),
              Text('Поделиться', style: TextStyle (color: Colors.green),),
            ],
          ),
          Divider(height: 30,),
          Container(
              margin: const EdgeInsets.fromLTRB(30.0, 0.0,30.0 ,0.0 ),
            child: const Expanded(
            child: Text (
              "Мы учимся в самом прекрасном ВУЗе на свете,а все остальные ВУЗы нам завидуют.Ведь это только у нас, после фразы привет , говорят дай сигарету.Это только мы,пройдя по коридору,можем поцеловать более ста человек.Только мы не любим когда нас выгоняют с пары, потому что в коридоре аська глючит и сеть не ловит!.Только в нашей столовой не стреляют меньше 100р.Только в наших туалетах на стенах пишут любовные послания в Армению и Адыгею .Только у нас аппендицит обостряется 2 раза в неделю перед высшей математикой.Только у нас проиграл!-звучит гордо! Только мы толпой в 50 человек бежим курить на перемене и нас таинственым образом не замечают.Мы гордо называем наш университет АГРАРНЫЙ  лучшим в мире,а остальные завистливо кричат СЕЛЬХОЗ!!  А теперь припев: Я ЛЮБЛЮ КУБГАУ!! Я ЛЮБЛЮ КУБГАУ!! Я ЛЮБЛЮ КУБГАУ!! Я ЛЮБЛЮ КУБГАУ!! А дальше поюют те, кто кто не любит кубгау: молчание.... Кубгау это высшее учебное заведение, находящееся в Краснодаре. Славен своей природой и прекрасными людьми",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,

            ),
          )
          )

        ],
      )

    );
  }
}
