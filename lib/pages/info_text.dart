import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InfoText {
  //BKI Info Text
  Widget info_1() {
    return Text(
      '''Vücut Kitle İndeksi Nedir?
    ''',
      style: TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_2() {
    return Text(
      '''Vücut kitle indeksi, kişinin kilosunun ağırlığına oranla ölçülmesi olarak tanımlanabilir. Farklı bir deyişle kişinin kilogram cinsinden ağırlığının, metre cinsinden uzunluğunun karesine bölünmesiyle elde edilir. Çocuk, genç ve yetişkinlerde yağlanmaya bağlı olarak oluşan aşırı kilonun saptanması için yaygın olarak kullanılır. Vücut kitle indeksi çoğunlukla vücut yağ ölçümüyle paralellik gösterse de yağlılık oranı hakkında net bir sonuç vermez. Farklı bir deyişle vücut yağını direkt olarak ölçmez, bunun yerine tahmin oluşturmak için bir denklem kullanır. Kişinin vücudundaki ya ve kas miktarının ölçülüp değerlendirilmesi için ilave ölçümler yapılmalıdır. Dolayısıyla boy kilo indeksi, vücudun ne kadar yağlı olduğunun doğrudan bir ölçüsü olarak kabul edilmez. Vücut kitle indeksi, kişinin sağlıklı ya da sağlıksız bir kiloda olup olmadığını belirlemeye yardımcı bir araçtır. Yapılan hesaplama sonucunda kişinin vücut kitle indeksi yüksek çıkarsa bu, kişinin vücudunda çok fazla yağ olduğu anlamını taşıyabilir. Diğer bir ifadeyle yüksek BMI sonucu, kişide kalp hastalıkları, yüksek tansiyon ve diyabet gibi hastalıklara yakalanma riskinin de yüksek olduğunu ifade eder. Çok düşük BMI sonucu ise kişinin boyuna göre fazla zayıf olduğunu ifade eder. Bu aynı zamanda kişide kemik erimesi, bağışıklık sisteminin zayıf olması ve anemi gibi pek çok farklı hastalığın varlığının işareti olabilir. Bu yüzden ideal kilonun korunmasına yardımcı olmak için son derece kolay bir şekilde hesaplanabilen kilo boy indeksi, kişinin kilosunu kontrol etmesine ve daha önemlisi kilosuna bağlı olarak gelişebilecek sağlık risklerine karşı önlem almasına yardımcı olabilir.
    ''',
      style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'),),
    );
  }
  Widget info_3() {
    return Text(
      '''Vücut Kitle İndeksi Nasıl Hesaplanır?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_4() {
    return Text('''Vücut kitle indeksini hesaplamak, vücut yağı ve kas kütlesi hakkında net bir bilgi sunmasa da kişinin ideal kilosu hakkında kolayca bilgi verir. Kişinin sağlıklı kiloda olup olmadığını anlamasında etkili bir yöntem olan boy kilo indeksi hesaplama işleminde elde edilen değer ne kadar yüksekse, kişinin vücudundaki yağ oranının o kadar fazla olduğu anlaşılır. BMI değeri, kişinin kilosunun, kalp krizi, diyabet ve kanser gibi pek çok sağlık sorunu için risk teşkil edip etmediğini belirlemesi için de kullanılabilir. Vücut kitle indeksi, kişinin kilogram cinsinden ağırlığının metre cinsinden boyunun karesine bölünmesiyle hesaplanır. Elde edilen sonuç, kişinin hangi ağırlık kategorisinde olduğunu anlamasında kullanılır. Pek çok kişi için vücut yağı hakkında iyi bir tahmin sunan kilo boy indeksi, vücut geliştiriciler, düzenli spor yapanlar ve diğer kaslı kişiler için doğru bir anlam ifade etmeyebilir. Bu kişiler fazla kilolu olmasalar dahi aşırı kas kütleleri nedeniyle yüksek BMI değeri ile karşılaşabilirler. Ayrıca kas kütlesini fazlaca kaybeden yaşlı kişilerde de vücut yağının fazla olduğunu gösterme konusunda yetersiz olabilir. Boy kilo indeksi hesaplama işlemi yapılırken çocuklar ve gençler için de aynı formül kullanılsa da BMI cinsinden elde edilen sonuç farklı şekilde yorumlanır. Yetişkin, genç ve çocuklarda vücut kitle indeksi hesaplama şu şekilde yapılır:

Tüm yaş gruplarında olduğu gibi öncelikle kişinin boyu ve kilosu doğru şekilde ölçülmelidir. Ardından boy kilo indeksini hesaplamak için vücut ağırlığı (kg) / boy uzunluğunun (m) karesi formülü kullanılır. Kişinin 1.74 m. uzunluğa ve 70 kg. ağırlığa sahip olduğu örnek bir durumda hesaplama şu şekilde yapılır:

1.74 x 1.74 = 3.02

70 / 3.02 = 23.2

Bu durumda kişinin vücut kitle indeksi 23.2 BMI'dır.

Bir diğer örnekte ise kişinin 1.55 m. boyunda ve 95 kg. ağırlığında olduğu varsayıldığında BMI değeri şu şekilde hesaplanır:

1.55 x 1.55 = 2.4025

90 / 2.4025 = 37.4

Bu durumda ise kişinin vücut kitle indeksi 37.4 BMI'dır.

2 ila 18 yaşındaki genç ve çocuk boy kilo indeksi hesaplama yöntemi aynı şekilde yapılsa da sonuçları farklı şekilde değerlendirilir. İki çocuğun birebir aynı BMI değerine sahip olması durumunda bile birinin obez, diğerinin ideal kiloda olduğu görülebilir. Farklı bir deyişle bu yaş grubunda boy kilo indeksi yaşa ve cinsiyete göre farklılık gösterdiğinden, ölçümün uzman diyetisyen ya da çocuk hekimi tarafından yapılması önerilir.
    ''',style: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      color: HexColor('#979494'),),);
  }
  Widget info_5() {
    return Text(
      '''Vücut Kitle İndeksi Değeri Ne Anlama Gelir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_6() {
    return Text('''Vücut kitle indeksinin hesaplanmasının ardından BMI cinsinden elde edilen değer şu şekilde yorumlanır:
0 ila 18,4 BMI: Zayıf. Kişinin boyuna oranla ağırlığının yetersiz olduğunu ifade eden bu değer ile karşılaşılması durumunda kişinin diyetisyen eşliğinde sağlıklı bir şekilde kilo alması önerilir.
18.5 ila 24.9 BMI: Normal. Bu değer aralığı kişinin ideal kiloda olduğunu gösterir. Bu değere sahip olan kişilerin düzenli, dengeli ve sağlıklı beslenmeye devam etmeleri önerilir.
25 ila 29.9 BMI: Fazla Kilolu. Kişinin boyuna oranla kilosunun fazla olduğunu gösteren bu değer aralığında kişinin uygun diyet ile fazla kilolarından kurtulması önerilir.
30 ila 34.9 BMI: Şişman. Birinci derece obez kategorisinde değerlendiren değer aralığında, kişinin kilosunun sağlık açısından risk oluşturabilecek düzeyde olduğu anlaşılır. Bu kişilerin diyetisyen yardımıyla kilo vermesi önerilir.
35 ila 44.9 BMI: Şişman. İkinci derece obez olarak tanımlanan bu değerlere sahip olan kişilerde kalp ve damar hastalıkları bakımından risk artar. Kişinin kilo vermek için diyetisyene başvurması önerilir.
45+ BMI: Aşırı Şişman. Üçüncü derece obez kategorisinde olan bu kişilerde hastalık gelişme riski çok yüksektir. Hekim ve diyetisyen eşliğinde kilo verilmesi önerilir.
Yaş aralığına göre ise kişinin ideal vücut kitle indeksi şu şekildedir:

* 19-24 Yaş: 19-24 BMI.
* 25-34 Yaş: 20-25 BMI.
* 35-44 Yaş: 21-26 BMI.
* 45-54 Yaş: 22-27 BMI.
* 55-64 Yaş: 23-28 BMI.
* 65 Yaş ve üzeri: 24-29 BMI.
Eğer sizde ya da bir yakınınızda kilo problemi varsa, en yakın sağlık kuruluşuna başvurarak kontrollerinizi yaptırmayı ihmal etmeyin. Sağlıklı günler dileriz.
    ''',style: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      color: HexColor('#979494'),),);
  }

  //BMI Info Text
  Widget info_7() {
    return Text(
      '''Bazal Metabolizma Nedir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_8() {
    return Text(
      '''İnsan vücudu yalnızca hareket halinde değil, dinlenme halinde de enerji, yani kalori harcar. Bunun sebebi, vücudun dinlenme halinde de temel yaşamsal işlevleri devam ettirmesidir. Bunlar nefes alıp verme, kan dolaşımı, sindirim, beyin ve sinir sistemi fonksiyonları ve hücre üretimidir. Bazal metabolizma, söz konusu temel işlevlerin devamı için enerji sağlayan metabolizmadır.
    ''',
      style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'),),
    );
  }
  Widget info_9() {
    return Text(
      '''Bazal Metabolizma Hızı (BMH) Nedir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_10() {
    return Text(
      '''Bazal metabolizma hızı, kişinin vücudunun temel yaşamsal fonksiyonları yerine getirmek için ihtiyaç duyduğu minimum kalori miktarına karşılık gelir ve kişiden kişiye farklılık gösterir. Bazal metabolizma ve dinlenme metabolizması sıklıkla karıştırılmaktadır. Dinlenme metabolizma hızı hesaplanırken vücudun yaşamsal fonksiyonlar dışında dinlenme halindeyken harcadığı kalorilerin de hesaba katılması gerekmektedir. Ancak her iki durumda da vücudun başka herhangi bir aktivite yapmıyor iken harcadığı enerji/kalori miktarı söz konusudur.Bazal metabolizma hızı genellikle yaşla birlikte vücuttaki yağsız vücut kütlesinin azalması sebebiyle düşer. Ortalama olarak kişilerin günlük kalori ihtiyacının %60-75’ini bazal metabolizma oluşturur. 20’li yaşlardan itibaren bazal metabolizma hızı her on yılda bir %1-2 oranında azalır. Ancak kişilerin genetik yapısı, aktivite miktarı ve beslenme biçimlerine göre bazal metabolizma hızında farklılıklar görülebilir.
    ''',
      style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'),),
    );
  }
  Widget info_11() {
    return Text(
      '''Bazal Metabolizma Hızı Nasıl Hesaplanır?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_12() {
    return Text(
      '''Özellikle kilo alma ve kilo verme döngülerinde, spor aktivitelerinde harcanan kalorinin belirlenmesinde, diyet ve beslenme rutinine karar verilmeden önce bazal metabolizma hızı hesaplanır. Bazal metabolizma hızını hesaplamanın birkaç yolu vardır, ancak en çok kullanılan yöntem Harris-Benedict yöntemidir. Aşağıda Harris-Benedict formülünün orijinali yer almaktadır. BMH kadınlar ve erkekler için farklı sabitler kullanılarak hesaplanır.Kadınlar için BMH;655,1 + (9,56 x kilo) + (1,85 x boy) – (4,68 x yaş)Erkekler için BMH;66,5 + (13,75 x kilo) + (5,03 x boy) – (6,75 x yaş) formülleri kullanılarak hesaplanır.Bu formüle ek olarak Mifflin-St. Jeor ve Katch-McArdle formülleri de bulunur. Katch-McArdle formülü dinlenme metabolizma hızını hesaplamak için kullanılır. Mevcut hesaplama yöntemleri tam ve doğru değerleri yansıtmaz, gerçek BMH değeri ancak laboratuvar ortamında tespit edilebilir.
    ''',
      style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'))

    );
  }
  Widget info_13() {
    return Text(
      '''Bazal Metabolizma Hızını Belirleyen Etmenler Nelerdir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_14() {
    return Text(
      '''Bazal metabolizma hızı kişiler arasında büyük farklılıklar gösterir. Ortalama olarak 1000 ile 2500 kalori arasında değişebilir. Bazal metabolizma hızını belirleyen en önemli etmen, kişinin yağsız vücut kütlesidir. Yağsız vücut kütlesi vücut kompozisyonun bir parçasıdır. Vücut dokularının depoladığı yağ dışında kalan hücre içi ve hücre dışı sıvılarını, kas dokusunu ve mineralleri içerir. Vücuttaki yağ kütlesinin toplam vücut ağırlığından çıkarılması yoluyla hesaplanır. Yağsız vücut kütlesinin hesaplanması için de kadın ve erkek için farklı formüller kullanılır.Yağsız vücut kütlesi dışında kişilerin yaşı, günlük aktivite miktarı ve aktivite biçimi; vücuda alınan besinler, cinsiyet, hormonal durumlar, genetik yapı ve kadınlar için menopoz bazal metabolizma hızını belirleyici diğer faktörlerdir. Ayrıca çeşitli metabolik hastalıklar, stres, uzun süren düşük kalorili diyetler de bazal metabolizma hızını etkiler.
    ''',
      style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'))
    );
  }
  Widget info_15() {
    return Text(
      '''Bazal Metabolizma Hızı Değişir mi?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_16() {
    return Text(
      '''Bazal metabolizma hızı sabit bir değer değildir. Kişilerin yağsız vücut kütlesini artıracak egzersizler yapması, hormonal bozuklukların giderilmesi, doğru beslenme, düzenli uyku gibi desteklerle bazal metabolizma hızı artırılabilir. Günlük sıvı tüketimine dikkat edilmesi ve beden kitle endeksine göre kişinin alması gereken su miktarının altına düşmemesi de bazal metabolizmanın yavaşlamaması için önemlidir.
    ''',
      style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'))
    );
  }
  Widget info_17() {
    return Text(
      '''Bazal Metabolizma Hızını Bilmek Neden Gereklidir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }
  Widget info_18() {
    return Text(
      '''Bazal metabolizma hızı değeri; kişilerin kilo alma, kilo verme ya da mevcut kilolarını koruma gibi durumlarda günlük ortalama ne kadar kalori almaları gerektiğini hesaplamak için kullanılır. Her ne kadar kilo alıp verme süreçlerinde belirleyici tek faktör alınan kalori miktarı olmasa da BMH hesapları kişilere ortalama değerler hakkında fikir verir.Günlük alınması gereken kalori miktarı kişiden kişiye farklılık gösterir ve birden fazla etmene göre belirlenir. Bazal metabolizma hızı bu etmenlerden yalnızca biridir. Buna cinsiyet ve günlük aktivite miktarı da eklenerek kişilerin ortalama günlük kalori ihtiyacı belirlenir. Aktivite seviyeleri genel olarak sedanter (hareketsiz), hafif aktivite, orta seviye aktivite, yüksek aktivite, çok yüksek aktivite olarak sınıflandırılır. Bu aktivite sınıflandırmalarına göre BMH hesaplarında kullanılan değişkenler de farklılık gösterir.
    ''',
      style:TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        color: HexColor('#979494'))
    );
  }

  // Diet 1

  Widget info_19()
  {
    return Text(
      '''BMI Sonucunuz Zayıf ise Ne Yapmalısınız?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }

  Widget info_20()
  {
    return Text(
      '''
      Vücut kitle indeksiniz 18’in altında çıktıysa zayıf kategorisine giriyorsunuz demektir. Bu durum yağ oranınızın, kas kütlenizin azlığı ve çokluğu ile pek alakalı değil. Boyunuza göre kilonuz fazla düşük demektir.

Anoreksiya vücut kitle indeksi düşük olan bireyler için bir tehlike olabilir, yeme alışkanlığınızı kontrol etmelisiniz.

Kilo almak için yapılması gereken, kabaca yakılandan daha fazla kalori almak olacaktır. Bunun için hazırladığımız Bulk Dönemi Rehberine geçiş yapabilirsiniz. Kilo alırken antrenman ve beslenmenizi nasıl düzenlemeniz gerektiğini öğrenebilirsiniz.
      ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }
  Widget info_21()
  {
    return Text(
      '''Bulk Dönemi Nedir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }

  Widget info_22()
  {
    return Text(
        '''
        Bulk dönemi, kilo alarak maksimum kas gelişimi sağladığımız dönemdir. Bulking döneminde yaktığımızdan çok kalori alırız.

Zamanla tartıda kilomuz yukarı çıkar ve ağırlık antrenmanları da yaparak kas geliştiririz. Bulk döneminde genelde yağ oranımız biraz artar.

Bulk dönemi bittikten sonra definasyon dönemine girerek bu yağ oranını kas kaybını minimumda tutarak azaltırız. Böylece hem kaslı, hem estetik bir görünüme sahip oluruz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_23()
  {
    return Text(
      ''' Bulk Döneminde Beslenme ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }

  Widget info_24()
  {
    return Text(
        '''Bu rehberde detaylı olarak bulk döneminden bahsedeceğim. Bulk döneminde beslenmenin nasıl olması gerektiğini bütün ayrıntılarıyla açıklayacağım. Fakat beslenme ile ilgili genel bir bilginizin olması bu rehberi sizin için daha anlaşılır kılacaktır.
        ''',
        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_25()
  {
    return Text(
      '''Bulking Makro Besinler ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }

  Widget info_26()
  {
    return Text(
        '''Almamız gereken kaloriyi hesapladık. Sıra makro besinleri düzenlemeye geldi. Kaloriyi makro besinler oluşturur. Bunlar protein, yağ ve karbonhidrattır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_27()
  {
    return Text(
      '''Günlük Kalori İhtiyacımızı Hesaplamak''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_28()
  {
    return Text(
        '''Amacımız ne olursa olsun, bir beslenme planı oluştururken ilk yapmamız gereken şey ne kadar kaloriye ihtiyacımız olduğunu bulmak. Günlük kalori ihtiyacımızı bulduktan sonra hedefimize göre kalori çıkarabilir veya ekleyebiliriz.

Bu şekilde diyetimiz şekillenir. Bu rehberde kilo alma döneminden bahsettiğimiz için öncelikle bazal metabolizma hızımızı bulmalıyız. Bazal metabolizma hızı dinlenme anında vücudun yaşamsal fonksiyonlarını devam ettirebilmesi için gerekli olan enerjidir. Bazal metabolizma hızımız bize bir kalori değeri verecektir. Bu değere aktivite faktörümüzü eklediğimizde günlük kalori ihtiyacımızı bulmuş oluruz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_29()
  {
    return Text(
      '''Kalori Fazlası Oluşturmak
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_30()
  {
    return Text(
        '''Günlük kalori ihtiyacımızı bulduktan sonra sırada kalori fazlası oluşturmak var. Bulking döneminde olduğumuz için amacımız kilo almak. Kilo almak için yaktığımızdan fazla kalori almamız gerekiyor. Buna kalori fazlası oluşturmak denir.

Sadece yaktığımız kadar kalori alarak da güçlenip kas geliştirebiliriz. Fakat bu şekilde maksimum kas gelişimi görmemiz zor. Gelişim daha yavaş ilerleyecektir. Bulk döneminde de amaç hedef zaman diliminde minimum yağ alımı ile maksimum kas gelişimi olduğu için kalori fazlası oluşturmamız gerekiyor. Peki ne kadar kalori fazlası oluşturmalıyız?

Ne kadar amacımız kilo almak, kas geliştirmek olsa da yağ oranımızı kontrol altında tutmamız gerektiğini söylemiştik. Yağ oranımızın artmaması yada minimum bir artış göstermesi lazım. Bunu gerçekleştirmek için kalori fazlasını doğru ayarlamalıyız.
250-500 kalori fazlası uygun olacaktır. Örnek olarak günlük kalori ihtiyacı 2500 kalori olan bir sporcu 2750 kalori ile kilo alıp kas geliştirebilir. Bu kalori fazlası kaloriler arttıkça değişebilir. Çok yüksek kalori ihtiyacı olan bir sporcu için 250 kalori fazlası bir değişiklik yaratmak için yeterli olmayabilir.

Bu yüzden kalori fazlası değerini günlük kalori ihtiyacımızın %10’u olarak da hesap edebiliriz. Örnek olarak 3500 kalori ihtiyacı olan bir sporcunun bulk döneminde 3500 + 350 = 3850 kalori alması mantıklı olacaktır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_31()
  {
    return Text(
      '''Bulking Makro Besinler
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_32()
  {
    return Text(
        '''Almamız gereken kaloriyi hesapladık. Sıra makro besinleri düzenlemeye geldi. Kaloriyi makro besinler oluşturur. Bunlar protein, yağ ve karbonhidrattır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_33()
  {
    return Text(
      '''Protein
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_34()
  {
    return Text(
        '''Sporcu beslenmesinde protein ihtiyacı sedanter (aktif olmayan) bireye göre daha fazla olacaktır. Çünkü kaslarımıza daha çok zarar veririz. Dolayısıyla yenilenmeleri için daha çok besine ihtiyacımız var. Sporcunun vücut ağırlığı (kg) başına 1.6 g protein, kas yenilenmesi için yeterli olacaktır. Bu değer yaş ilerledikçe protein emilimi düşeceği için artabilir. Gereğinden fazla protein alırsak yağ ve karbonhidrat için yeterli kalori kalmaz ki bunlar da önemli makrolardır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_35()
  {
    return Text(
      '''Yağ
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_36()
  {
    return Text(
        '''Yağ kesinlikle çok önemlidir. Eklem sağlığı, vücut direnci, bağışıklık sistemi ve yağ metabolizması içinde önem taşır. Kalorilerimizin yüzde 20-30’luk kısmını yağların doldurması iyi olacaktır. Yağ çok kaloriye sahip olduğu için kilo almamızda işimize yarayacaktır
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_37()
  {
    return Text(
      '''Karbonhidrat
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_38()
  {
    return Text(
        '''Karbonhidrat ana enerji kaynağımızdır. Karbonhidrat ne kadar performansımız için önemli olsa da önem sırasında protein ve yağdan sonra gelir. Gereken protein ve yağ kalorilerine karar verildikten sonra kalan kaloriyi karbonhidratla tamamlıyoruz.

Makroların kaç kalori olduğunu hatırlayalım:

• 1 gram protein = 4 kcal
• 1 gram karbonhidrat= 4 kcal
• 1 gram yağ = 9 kcal
80 kg olan bir sporcu kilosunun 1,8 i kadar protein alsa bu,
80 x 1.8= 144g protein alsa

Bu sporcu kalori fazlası ile beraber 3000 kalori alsa, kalorilerinin yüzde 30 u kadar yağ alsa,
3000 x %30 = 900 kalori
1 g yağ = 9 kalori
900 / 9 = 100g yağ alsa

• 144 x 4 = 576 kalori
• 100×9 = 900kalori
• 900+576 = 1476 kalori
• 3000 – 1476 kalori = 1524 kalori ( karbonhidratlar için kalan kalori)
• 1524 / 4 = 381 g (gereken karbonhidrat gramajı)

Böyle bir hesaplamayla gereken karbonhidrat ihtiyacını da bulabiliriz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_39()
  {
    return Text(
      '''Hangi Besinleri Kullanmalıyız?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_40()
  {
    return Text(
        '''Birinci önceliğimiz kalori, ikinci önceliğimiz makro besinler, üçüncü önceliğimiz ise besin kalitesidir.

Besin kalitesi uzun vadede sağlığımız için de önemlidir. Sağlığımıza dikkat edersek daha uzun süre ve daha etkili olarak kas geliştirmeye devam edebiliriz.

Bunun yanında tabii ki makrolarımıza uydurarak lezzetli yiyeceklerin keyfini çıkarmaya devam edebiliriz. Sadece çoğunlukla kaliteli beslendiğimizden emin olmalıyız. Şimdi makro besinler için öncelikli önerdiğim besin kaynaklarına geçelim:
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_41()
  {
    return Text(
      '''Protein kaynakları
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_42()
  {
    return Text(
        '''Kas geliştirmek için protein almamız şart. Şanslıyız ki protein ihtiyacımız çoğu spor salonlarında duyduğumuz protein miktarından daha az. Bulk döneminde tahıl kaynakları ile bile yüksek oranda protein alabiliyoruz.

Fakat tahıllar tek başlarına ihtiyacımız olan aminoasitlerin hepsini sağlamayacaklardır. Bunu sağlamak için protein kaynakları için yumurta, kırmızı et, beyaz et, balık, süt ürünleri ve baklagilleri tüketebiliriz. Yumurta ve et ürünleri protein içerikleri sayesinde protein ihtiyacımızı doldurmak için ilk seçilecek besinlerdir.

Fakat vegan veya vejetaryenseniz de protein ihtiyaçlarınıza baklagiller ve tahılları birleştirerek ulaşabilirsiniz. Baklagil içinde karbonhidrat da bulundurduğu için karbonhidrat almaya çalışırken de işimize yarayabilir. Aynı zamanda baklagillerde yüksek oranda lif vardır. Sindirim için de yararlıdırlar.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_43()
  {
    return Text(
      '''Yağ kaynakları
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_44()
  {
    return Text(
        '''Diyetimizde kaliteli yağ kaynaklarının bulunması düşündüğümüzden daha önemli. Yağ metabolizma, sindirim sistemi, boşaltım sistemi ve bağışıklık sisteminde görev alır. Bu sistemlerde oluşacak bir problem kas gelişimimizi yavaşlatacaktır. Bu yüzden çoğunlukla iyi kaynaklardan tüketerek yeterince yağ aldığımızdan emin olmalıyız. Aynı zamanda yağ diğer makro besinlere göre daha çok kalori içerdiği için kalori hedefimize ulaşmamız için kolaylık sağlayacaktır.

Zeytinyağı, hindistan cevizi yağı, kuruyemişlerdeki yağ (fındık, badem, fıstık, ceviz gibi…) kullanabileceğimiz en sağlıklı yağ kaynaklarıdır. Bunlara ek olarak süt ürünlerindeki yağları, et ürünlerindeki yağları ve tereyağını tüketebiliriz. Fakat bu kaynakları ikinci planda tutmamız uzun vadede daha optimal olacaktır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  Widget info_45()
  {
    return Text(
      '''Karbonhidrat kaynakları
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_46()
  {
    return Text(
        '''Bulk döneminde kas gelişimini desteklemesi, glikojen depolarını yeterince doldurması ve performansımızı arttırması için hem hızlı sindirilen hem de yavaş sindirilen karbonhidratları tüketmeliyiz.

Pirinç, patates, bulgur, tam buğday ekmeği, yulaf, buğday ruşeymi, makarna, kinoa ve baklagiller iyi kaynaklardır.

Bisküvi, gofret gibi paketli gıdaları az tüketmeliyiz. Çünkü bunlar besin kalitesi yüksek gıdalar değillerdir ve kas gelişimimizi de daha az desteklerler. Aynı zamanda mikro besin ihtiyaçlarımızı da yeterince karşılayamazlar.

Meyve tüketmemiz de vitamin alımı açısından önemlidir. Günde 1-2 porsiyon meyve tüketimi hem lezzetli olacaktır hem de hedeflerimiz doğrultusunda işimize yarayacaktır. Karbonhidrat gereksinimimizi tamamlayamadığımız durumlarda da meyve suyu içebiliriz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  //Diet 2

  Widget info_47()
  {
    return Text(
      '''İdeal Kilosunda Olan Bireyler
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_48()
  {
    return Text(
        '''BMI boyunuza göre kilonuzun gayet iyi durumda olduğunu söylüyor. Harika! Buradan sonrası sizin isteğinize kalmış, bulunduğunuz kiloyu koruyarak sağlıklı bir hayat sürdürmeye devam edebilirsiniz. Ya da daha fazlasını isteyebilirsiniz. Daha iyi bir sporcu, daha düşük bir yağ oranı ya da daha fazla kas kütlesi isteyebilirsiniz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  //Diet 3

  Widget info_49()
  {
    return Text(
      '''Kilolu Olan Bireyler
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_50()
  {
    return Text(
        '''Vücut kitle indeksiniz 25’in üstünde çıktıysa bu hesaplamaya göre kilolusunuz demektir. Fakat bu noktada yağ oranınızı hesaplamanızı öneriyoruz.

Özellikle sporcuysanız kas kütleniz fazla ve yağ kütleniz az olacağından kilolu çıkma ihtimaliniz yüksek. Fakat kilonuz kas kütlenizden dolayı fazla ise, sağlıksız olduğunuz anlamına gelmez.

Bu noktada iyi bir fiziksel analiz için BMI tek başına yeterli olmayacaktır. Bunun için yağ oranı hesaplayıcımıza gidebilirsiniz. Yağ oranınızı kullanarak toplam yağ ve kas kütlenizi bulabilirsiniz.

Bunun yanında genel olarak sağlıklı erkeklerde yağ oranı %15-20 arasında olacaktır. Kadınların gebelik ihtimalinden dolayı yağ oranları genelde erkeklerden daha fazla olur. Dolayısıyla sağlıklı bir kadının yağ oranı da %20-25 arasında olacaktır.

Bunun dışında yağ oranınız yüksek olsa dahi kilolu sınıfta sağlığınız büyük bir riskte değil. Düzeltmesi kolay olacaktır. Definasyon Dönemi yazımızı okumanızı öneriyoruz. Bu sayede beslenmenizi ayarlayarak nasıl zayıflayabileceğinizi öğrenebilirsiniz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),
        )
    );
  }

  Widget info_51()
  {
    return Text(
      '''Definasyon Dönemi Nedir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_52()
  {
    return Text(
        '''Definasyon ya da definasyon dönemi: Kaslarımızı parçalayarak daha belirgin hale getirmek için yağ yakmaya yönelik antrenman ve diyet uygulama dönemidir.

Özellikle bodybuilding içinde sürekli olarak “bulking” ve “definasyon” dönemi görürüz. Bulking döneminde elde edilen kas kütlesini daha da belirgin hale getirmek için definasyon diyeti yapılır. Eğer profesyonel vücut geliştirici değilseniz özellikle böyle 2 dönem halinde çalışmak zorunda değilsiniz. Hatta profesyonel sporcu olsanız dahi aynı anda kas geliştirerek yağ yakabilirsiniz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_53()
  {
    return Text(
      '''Definasyon Diyeti
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_54()
  {
    return Text(
        '''Definasyon dönemindeki ana amacımız yağ yakmak. Beslenmemizi buna yönelik hazırlamalıyız. Yağ yakımı için uygulayabileceğimiz detaylı taktikler mevcut. Fakat yağ yakmanın temeli basit matematikten geçiyor.

Kalori neredeyse bütün gıdalarda bulunan enerji birimidir. Vücudun gün içinde harcadığı bir enerji miktarı (yakılan kalori) vardır. Aynı zamanda da vücudumuza aldığımız bir enerji miktarı (alınan kalori) vardır. Yani yaktığımız kaloriden daha az kalori alırsak kilo veririz.

Vücut bu kiloyu su, yağ ve kas olarak verebilir. Fakat, özellikle düzgün bir antrenman programı uygulayan sporcuların kas kaybetmesi oldukça zordur. Dolayısıyla yağ yakımı oluşacaktır. Peki biz bunu nasıl sağlayabiliriz?

Öncelikle günlük kalori ihtiyacımızı bulmamız lazım. Yani kilomuzu korumak için her gün almamız gereken kaloriyi. Sonra bu kaloriden 250-500 kalori çıkarınca yağ yakmak için ihtiyacımız olan kaloriyi bulmuş olacağız.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_55()
  {
    return Text(
      '''Günlük Kalori İhtiyacını Hesaplama
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_56()
  {
    return Text(
        '''Günlük kalori ihtiyacımızı bulmak için öncelikle bazal metabolizma hızımızı bulmalıyız. Bazal metabolizma hızı dinlenme anında vücudun yaşamsal fonksiyonlarını sürdürmesi için gereken enerjiyi gösterir. Bunun üstüne günlük aktivitelerimizde yaktığımız kalorileri ekleyince günlük kalori ihtiyacımızı bulmuş olacağız.

Bazal metabolizma hızımızı bulmak için birkaç formül ve hesaplayıcı mevcut. Bunlar arasında en işe yarar olanı yağ oranımızı kullandığımız Katch Mcardle formulüdür.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_57()
  {
    return Text(
      '''Makro Besinler
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_58()
  {
    return Text(
        '''Kaloriyi hesapladık. Sıra makroları ayarlamaya geldi. Makro besinler protein, yağ ve karbonhidrattır. Makro besinler kaloriyi oluşturur. Peki bu makroları nasıl ayarlayacağız. Proteinle başlayalım.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_59()
  {
    return Text(
      '''Protein
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_60()
  {
    return Text(
        '''Kas kaybını önlemek için minimum proteini aldığımızdan emin olmalıyız. Sedanter (aktif olmayan) bir bireyin protein eksikliği yaşamaması için kg başına 1 g protein yeterlidir. Fakat sporcu beslenmesinde bu ihtiyaçlar artar çünkü kaslarımıza daha çok zarar veririz. Dolayısıyla yenilenmeleri için daha çok besine ihtiyacımız var. Sporcunun vücut ağırlığı (kg) başına 1.6 g protein kas yenilenmesi için yeterli olacaktır. Bu değer yaş ilerledikçe protein emilimi düşeceği için artabilir. Yine karbonhidrat alımı azaldıkça da (özellikle Low Carb gibi bir diyet sistemi izleyenlerde) bu değer kg’ın 2-3 katına kadar çıkabilir.

Gereğinden fazla protein alırsak yağ ve karbonhidrat için yeterli kalori kalmaz ki bunlarda önemli makrolardır. Aynı zamanda protein de kaloriye sahiptir ve fazlası zayıflamanızı zorlaştıracaktır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_61()
  {
    return Text(
      '''Yağ
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_62()
  {
    return Text(
        '''Yağ, protein ve karbonhidrata göre çok kaloriye sahiptir. Bu yüzden fazla alırsak kalorilerimizi dolduracaktır. Fakat yağ kesinlikle çok önemlidir. Eklem sağlığı, vücut direnci, bağışıklık sistemi ve yağ metabolizması içinde önem taşır. Yani yağ yakmak için yağ da almalıyız. Kg başına minimum 0.7 g yağ alınmalıdır.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }


  Widget info_63()
  {
    return Text(
      '''Karbonhidrat
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_64()
  {
    return Text(
        '''Karbonhidrat ana enerji kaynağımızdır. Karbonhidrat ne kadar performansımız için önemli olsa da önem sırasında protein ve yağdan sonra gelir. Gereken protein ve yağ kalorilerine karar verildikten sonra kalan kaloriyi karbonhidratla tamamlıyoruz. Definasyon döneminde karbonhidratı azaltmak işimize yarayacaktır. Karbonhidrat azaldıkça yağ ve protein artabilir.

Makroların kaç kalori olduğunu hatırlayalım:

* 1 gram protein = 4 kcal
* 1 gram karbonhidrat= 4 kcal
* 1 gram yağ = 9 kcal

Örnek olarak 2500 kalori alan bir sporcu, 180 g protein, 70 g yağ alsa;

* 180×4 = 720 kalori
* 70×9 = 630 kalori
* 720+630 = 1350 kalori
* 2500 – 1350 kalori = 1150 kalori ( karbonhidratlar için kalan kalori)
* 1150 / 4 = 287 g (gereken karbonhidrat gramajı)
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_65()
  {
    return Text(
      '''Hangi Besinleri Tüketmeliyiz?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_66()
  {
    return Text(
        '''Makrolarımıza uygun beslendiğimiz sürece kilo verebilir, yağ yakabiliriz. Fakat besin seçeneklerimizi düzenlemenin sağlığımız üzerindeki etkisi büyük. Fastfood kaynakları ile de makrolarımıza ulaşabiliriz fakat bu uzun vadede sindirim ve boşaltım sistemlerimize zarar verebilir. Aynı zamanda yeterli mikro besinleri (vitamin ve mineraller) bu şekilde almamız oldukça zor. Mikro besinler de metabolizmada, dolayısıyla yağ yakımında önemli rollere sahipler.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_67()
  {
    return Text(
      '''Protein kaynakları
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_68()
  {
    return Text(
        '''Hayvansal kaynaklar elzem aminoasitleri içerdikleri için iyi kaynaklardır. Protein ihtiyacımızın çoğunu et, balık ve süt ürünlerinden karşılayabiliriz.
Bitkisel kaynaklı besinlerde de protein vardır ve bunları da günlük protein ihtiyacımıza eklemeliyiz. Bitkisel kaynakların aminoasit profilleri hayvansal kaynaklı besinlere göre daha zayıftır. Fakat baklagilleri tahıllarla birleştirerek gerekli aminoasitleri alabiliriz. Kuru fasulye ve pirinç pilavı buna bir örnektir. Bu tarz uygulamalarla vejetaryen veya vegan olarak da gerekli proteini alabilirsiniz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_69()
  {
    return Text(
      '''Yağ kaynakları
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_70()
  {
    return Text(
        '''Yağ kaynakları olarak tüketebileceğimiz en iyi kaynaklar için zeytinyağı, avokado, omega-3 oranı yüksek balıklar (somon gibi…), karbonhidrat içeriği düşük kuruyemişler (badem, fındık, fıstık, ceviz gibi…) ve hindistan cevizi yağını söyleyebiliriz. Bu yağlar kalp hastalıklarına iyi geldikleri gibi metabolizmamızı da olumlu etkilerler. Dolayısıyla yağ yakmamıza destek olurlar.

Bunların yanında makrolarımıza uydurduğumuz sürece az miktarda tereyağı, ayçiçek yağı da tüketilebilir. Ama en iyi sonucu görmek istiyorsak yağ ihtiyacımızın çoğunu sağlıklı yağlardan almaya özen göstermeliyiz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_71()
  {
    return Text(
      '''Karbonhidrat kaynakları
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_72()
  {
    return Text(
        '''Kan şekerimizi yükselten besinler insülin hormonumuzun yükselmesine sebep olurlar. İnsülin hormonu yükselince vücut daha çok yağ depolar. Bu şekilde söylenince ürkütücü olsa da işin aslı o kadar korkunç değildir. Kalori açığını ayarladığınız ve kilo verdiğiniz sürece yağ yakarsınız. Ama doğru karbonhidrat seçimleriyle yağ yakımını hızlandırabiliriz. Aynı zamanda ileride şeker hastası olma ihtimalimizi de azaltabiliriz.

Bunun için tüketebileceğimiz en iyi besinler daha yavaş sindirilen glisemik indeksi düşük besinlerdir. Bulgur, tam buğday ekmeği, esmer pirinç, yulaf, buğday ruşeymi bu tarz kaynaklara iyi örneklerdir.

Beyaz pirinç, patates gibi glisemik indeksi yüksek kaynaklarda tüketilebilir. Bunları tüketirken aynı faydayı almak istiyorsak glisemik yüklerini hesaba katarak küçük porsiyonlar kullanabiliriz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'))
    );
  }

  //Diet 4

  Widget info_73()
  {
    return Text(
      '''Obez Olan Bireyler
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_74()
  {
    return Text(
        '''Vücut kitle indeksiniz 30’un üstünde çıktıysa obez kategorisindesiniz demektir. Bu noktada profesyonel vücut geliştirme, güreş gibi bir spor yapmıyorsanız sağlığınız neredeyse kesin olarak tehdit altında demektir.

Size önerimiz yine Definasyon Dönemi yazımızı okumanız olacaktır. Bunun yanında Ketojenik Diyet gibi diyet sistemlerini daha hızlı ve daha kolay kilo vermek için inceleyebilirsiniz.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),)
    );
  }

  Widget info_75()
  {
    return Text(
      '''KETOJENİK DİYET NEDİR, NASIL UYGULANIR?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_76()
  {
    return Text(
        '''Ketojenik Diyet çok düşük karbonhidrat, orta miktarda protein ve yüksek yağ alınan bir diyet sistemidir. Amacı vücudun enerji sistemini değiştirmektir. Bu diyet sisteminde vücudu ketosise sokarak vücudun enerji olarak yağ moleküllerini kullanmasını sağlarız. Bu yüzden yağ yakımı için oldukça işe yarar bir diyet sistemidir. Tabi bununla beraber bazı yan etkileri de olabilir.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),
        )
    );
  }

  Widget info_77()
  {
    return Text(
      '''Ketojenik Diyeti Nasıl Uygulamalıyız?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_78()
  {
    return Text(
        '''Ketojenik Diyet sistemi sadece bir sistemdir. Bizim yine ana beslenme parametrelerine uymamız gerekiyor. Yani kilo vermek istiyorsak yaktığımızdan az kalori almalıyız. Aynı şekilde kilo almak istiyorsak yaktığımızdan çok kalori almalıyız. Ketojenik Diyette protein ne kadar sınırlansa da kas geliştirmek veya korumak istiyorsak ihtiyacımız olan proteini almalıyız.

İhtiyacınız olan kalori ve protein ihtiyacını öğrenmek için “Beslenme Rehberi” ve “Protein Rehberi”ni inceleyebilirsiniz.

Bunun yanında Ketojenik Diyete yönelik bir makro besin ayarlaması önemli. Ketosise girmeniz için gereken makro besin yüzdeleriniz:
• %10 veya daha az karbonhidrat (ne kadar az o kadar iyi)
• %15-25 protein (protein yüzde 25’i geçmeyecek.)
• %60-70 yağ

Bu makro besin yüzdeleri için örnek vermek gerekirse, 2750 kalori ihtiyacı olan birisi yağ yakmak için bu diyeti kullanıyorsa 2500 kalori ile 250 kalorilik bir açık oluşturabilir. 2500 kaloriyide makro besinlere bölersek:
2500 kalori
• %5 karbonhidrat: 30g
• %25 protein: 155g
• %70 yağ: 195g

Yüzde 10 karbonhidrat kısmı değişkenlik gösterebilir. Ketosise girmek için ideal olarak 50 gramın üstünde karbonhidrat tüketmemelisiniz. Bunun için gerekirse karbonhidrat yüzdesi düşebilir.
        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),
        )
    );
  }

  Widget info_79()
  {
    return Text(
      '''Ketojenik Diyet İçin Uygun Besinler
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }


  Widget info_80()
  {
    return Text(
        '''Ketojenik Diyeti uygularken ketosise girmek için günde 50 gramdan düşük bir karbonhidrat alımımız olmalı. Bunun içinde karbonhidrat kaynaklı besinlerden uzak durmalıyız. Bu, pirinçten, patatesten, yulaftan, ekmekten ve bunlar gibi karbonhidrat kaynağı olan besinlerden uzak durmamız anlamına geliyor.

Protein kaynakları olarak yağ alımımızı da kolaylaştırmak için yağlı et kaynakları tüketilebilir. Proteini de fazla almadığımızdan emin olmalıyız.

Yağ kaynakları için tereyağı, et yağları, süt yağları da tüketilebilir. Bunun yanında alınan yağın çoğunluğunun zeytinyağı, karbonhidrat oranı düşük kuruyemiş kaynakları(badem, fındık, fıstık gibi) ve hindistan cevizi yağından olmasını öneririm.

Hindistan cevizi yağı MCT(medium-chain triglycerids) içerir. Bu yağ asitleri karaciğere daha hızlı taşınır. Dolayısıyla keton oluşumuna fayda sağlayacaktır. İmkanınız varsa Ketojenik Diyet uygularken hindistan cevizi yağı tüketmenizi öneririm.


        ''',

        style:TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          color: HexColor('#979494'),
        )
    );
  }

  Widget infoGraphic() {
    return Text(
      '''Almanız Gereken Karbonhidrat, Yağ, Protein Miktar Grafiği
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: HexColor('#2E5AC9')
      ),
    );
  }



}
