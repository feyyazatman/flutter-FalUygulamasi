import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int falYanitlariNo = 1;

  List<String> falYanitlari = [
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  void mesajGetir1() {
    setState(() {
      print(falYanitlari[falYanitlariNo]);
      falYanitlariNo = Random().nextInt(5) + 1;
    });
  }

  void mesajGetir2() {
    setState(() {
      print(falYanitlari[falYanitlariNo]);
      falYanitlariNo = Random().nextInt(5) + 6;
    });
  }

  void mesajGetir3() {
    setState(() {
      print(falYanitlari[falYanitlariNo]);
      falYanitlariNo = Random().nextInt(5) + 11;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text('GÜNÜN FALI'),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/falci.png',
                width: 200.0,
                height: 300.0,
              ),
              Container(
                width: 300.0,
                height: 50.0,
                child: TextButton.icon(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  label: Text(
                    'AŞK DURUMU',
                    style: TextStyle(color: Colors.red),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: mesajGetir1,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300.0,
                height: 50.0,
                child: TextButton.icon(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                  ),
                  label: Text('PARA DURUMU',
                      style: TextStyle(color: Colors.green)),
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: mesajGetir2,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300.0,
                height: 50.0,
                child: TextButton.icon(
                  icon: Icon(
                    Icons.explore,
                    color: Colors.blue,
                  ),
                  label: Text('GÜNLÜK TAVSİYE',
                      style: TextStyle(color: Colors.blue)),
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: mesajGetir3,
                ),
              ),
              Divider(),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(falYanitlari[falYanitlariNo]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
