import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        color: Colors.red
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
          fontWeight: FontWeight.normal),
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
          color: Colors.red
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
        fontWeight: FontWeight.normal),);
  }
  Widget info_5() {
    return Text(
      '''Vücut Kitle İndeksi Değeri Ne Anlama Gelir?
    ''',
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.red
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
        fontWeight: FontWeight.normal),);
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
          color: Colors.red
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
          fontWeight: FontWeight.normal),
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
          color: Colors.red
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
          fontWeight: FontWeight.normal),
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
          color: Colors.red
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
          fontWeight: FontWeight.normal)

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
          color: Colors.red
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
          fontWeight: FontWeight.normal)
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
          color: Colors.red
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
          fontWeight: FontWeight.normal)
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
          color: Colors.red
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
          fontWeight: FontWeight.normal)
    );
  }
}
