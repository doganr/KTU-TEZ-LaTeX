[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/doganr/KTU-TEZ-LaTeX/">
    <img src="https://www.ktu.edu.tr/image/tr_bg.png" alt="Logo" width="100" height="100">
  </a>

<h3 align="center">KTU-TEZ-LaTeX</h3>

  <p align="center">
    Karadeniz Teknik Üniversitesi, Fen Bilimleri Enstitüsü, Yüksek Lisans ve Doktora tez yazım kılavuzuna uygun LaTeX şablonu.
    <br />
    <a href="https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Tez.pdf">Demo</a>
    ·
    <a href="https://github.com/doganr/KTU-TEZ-LaTeX/issues">Bug Bildirin</a>
    ·
    <a href="https://github.com/doganr/KTU-TEZ-LaTeX/issues">Özellik İsteyin</a>
  </p>
</div>

* * *

> :warning: **UYARI! Resmi Değildir**: Karadeniz Teknik Üniversitesi, Fen Bilimleri Enstitüsünün 24.06.2020 son güncelleme tarihli [Tez Yazım Klavuzu](https://ktu.edu.tr/dosyalar/fbe_fe8c3.pdf) yönergeleri dikkate alınarak gönüllülük esası ile oluşturulmuştur!

* * *

<div align="center">
<h4 align="left">Gereksinimler</h4>
<p align="left">
Proje açık kaynak kodlu <a href="https://miktex.org/">MiKTeX</a> TeX/LaTeX dizgi sistemi <a href="https://www.texstudio.org/">TeXstudio</a> editörü kullanarak düzenlenmiştir. Kaynak dosyaları <a href="https://www.overleaf.com/">Overleaf</a> online LaTeX editörüne yükleyerek de çalışabilirsiniz. 
</p>
</div>

<div align="left">
<h4 align="left">Kullanım</h4>



1. [Meta.tex](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Meta.tex)  Dosyası
   * Bu dosya tezinizin meta bilgilerinin girildiği yerdir.
   * Teziniz **Doktora Tezi** ise şablonun mevcut hali doktora tezine uygun şekilde bırakılmıştır. Yani **Meta.tex** dosyası içerisinde tez tipi ile ilgili değişiklik yapmanıza gerek yoktur.
   * Teziniz **Yüksek Lisans Tezi** ise **Meta.tex** dosyasının başındaki `%` işaretleri kaldırılarak aşağıdaki şekilde güncellenmelidir. 
        ```       
        \renewcommand{\teztipibool}{0}
        \thesistype{MS. Thesis}
        \teztipi{YÜKSEK LİSANS TEZİ}
        \teztipikucuk{Yüksek Lisans Tezi}
        ```
        Ayrıca tezin Doktora Tezi olduğunu gösteren satırların önüne % işareti koyularak ilgili satırlar aşağıdaki gibi güncellenmelidir.
        ```       
        %\renewcommand{\teztipibool}{1}
        %\thesistype{PhD. Thesis}
        %\teztipi{DOKTORA TEZİ}
        %\teztipikucuk{Doktora Tezi}
        ```
    * **Meta.tex** dosyası içerisindeki diğer bilgiler sizin tez bilgileriniz ve kişisel bilgileriniz ile değiştirilmelidir. **Meta.tex** dosyası içerisinde değiştirdiğiniz değerler tezinizin her yerinde ilgili değişken adı ile erişilebilir olacaktır. Örneğin tez başlığını değiştirmek için **Meta.tex** dosyası içerisinde
        ```
        \baslik{PANKREAS KANSER DOKULARININ SEGMENTASYONUNDA FARKLI DERİN ÖĞRENME TEKNİKLERİNİN PERFORMANSLARININ İNCELENMESİ}
        ```
        ifadesinde `\baslik{}` isimli ifadenin içindeki değerin değiştirilmesi yeterli olacaktır.
2. [Tez.tex](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Tez.tex)  Dosyası
    * Tezinizin **Önsöz** bilgisini **Tez.tex** dosyası içerisinde 
        ```
        \begin{onsoz}
        %önsöz bilginiz buraya gelecek
        \end{onsoz}
        ```
        etiketleri arasına giriniz. Sayfa konumunun değişmemesi için lütfen bu etiketlerin yerini değiştirmeyiniz!
    * Tezinizin **Özet** bilgisini **Tez.tex** dosyası içerisinde 
        ```
        \begin{ozet}
        %özet bilginiz buraya gelecek
        \end{ozet}
        ```
        etiketleri arasına giriniz. Sayfa konumunun değişmemesi için lütfen bu etiketlerin yerini değiştirmeyiniz!
    * Tezinizin **İngilizce Özet (Abstract)** bilgisini **Tez.tex** dosyası içerisinde 
        ```
        \begin{abstract}
        %ingilizce özet bilginiz buraya gelecek
        \end{abstract}
        ```
        etiketleri arasına giriniz. Sayfa konumunun değişmemesi için lütfen bu etiketlerin yerini değiştirmeyiniz!
    * Tez şablonunun bütünlüğünü koruyabilmek için tüm tez bölümleri ayrı birer klasör içerisinde tutulmaktadır. Örnek tezde 5 adet alt tez bölümü bulunmaktadır ve bu böümlerin her biri için ayrı birer alt klasör oluşturulmuştur. Sizde tez şablonunda istediğiniz sayıda alt bölüm ekleyebilirsiniz. Alt bölümleri **Tez.tex** dosyası içerisinde 
        ```
        \include{Genel-Bilgiler/GenelBilgiler}
        \include{Yapilan-Calismalar/Yapilan-calismalar}
        \input{Bulgular-Irdeleme/Bulgular-Irdeleme}
        \input{Sonuclar/Sonuclar}
        \input{Oneriler/Oneriler}
        ```
        satırlarını değiştirerek gerçekleştirebilirsiniz. Oluşturduğunuz alt tez bölümü klasörlerindeki LaTeX dosyalarını `\input{}` ya da `\include{}` komutlarından herhangi birini kullanarak **Tez.tex** dosyası içerisine istediğiniz sıralama ile ekleyebilirsiniz.
    * Tez dosyası içerisinde eklediğiniz görüntülerin başlık hizalamasını tez yazım formatına uygun şekilde gerçekleştirebilmek için hizalamaları her görüntü için ayrı ayrı elle yapmanız gerekmektedir. Örnek bir başlık hizalama kodu aşağıdaki gibidir.
        ```
        \captionsetup[figure]{margin={0.3cm,0cm}}
        \begin{figure}[h!]
            \begin{center}
                \vspace{0.4cm}
                \captionbox{Pankreas organının anatomik yapısı\cite{pancreasimage}
                \label{fig:pank_anat}}
                {
                    \vspace{0.4cm}
                    \includegraphics[scale=0.52]{Genel-Bilgiler/Figures/pankreas.pdf}
                }
            \end{center}
        \end{figure}
        ```
        Burada `\captionsetup[figure]{margin={0.3cm,0cm}}` kodu ile sağdan ve soldan hizalamaları el ile yapmanız tez yazım kuralına uygun başlıklar elde etmenizi sağlayacaktır.
3. [Semboller.tex](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Semboller.tex)  Dosyası
    *  Tezinizde kullandığınız sembolleri bu dosya altından ekleyebilirsiniz. **Semboller.tex** dosyası içerisindeki `longtable` nesnesinde LaTeX formatında birer satır şeklinde aşağıdaki gibi eklemeler yapmanız Semboller dizininin oluşmasını sağlayacaktır.
        ```
        $ACC $ & : &  Doğruluk (Accuracy) \\
        ```
4. [Ekler.tex](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Ekler.tex)  Dosyası
    * Eğer tezinizde Ekler bölümü yer alacaksa öncelikle **Tez.tex** dosyası içerisine en sonda yer alan 
        ```
        \titleformat{\chapter}{\normalfont\fontsize{12}{12}\bfseries}{\thechapter}{0em}{. \hspace{0ex}}
        \include{Ekler}
        \label{EklerBitis}
        ```
        satırlarının önündeki `%` işaretini kaldırarak **Ekler.tex** dosyası içerisini içeriğinize göre güncelleyebilirsiniz.
5. [Ozgecmis.tex](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Ozgecmis.tex)  Dosyası
    * Bu dosya ile tezin sonuna eklenecek olan özgeçmiş bilgilerinizi düzenleyebilirsiniz.
6. [Ayarlar.tex](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/Ayarlar.tex)  Dosyası
    * Bu dosya LaTeX şablonunda kullanılan kütüphanelerin ve bazı ön ayarlamaların yer aldığı dosyadır.
    * LaTeX de yeniyseniz bu dosya içeriğine hiç dokunmayınız!
7. [kaynakca.bib](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/kaynakca.bib)  Dosyası
    * Bu dosya içerisinde tezinizin kaynakçasını BibTeX formatında oluşturunuz. Tezinizin içerisinde alıntı yapmak istediğiniz kaynakçaya `\cite{kaynakcaetiketi}` komutu ile erişim sağlayabilirsiniz. Tezinizin kaynakça kısmı otomatik olarak oluşturulacaktır. 
8. [ktu.bst](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/ktu.bst)  Dosyası
    * Bu dosyada kaynakçanın otomatik tez yazım klavuzuna uygun üretilmesi için gerekli kodlar yer almaktadır. Lütfen içeriğini değiştirmeyiniz! 
9. [ktutez.cls](https://github.com/doganr/KTU-TEZ-LaTeX/blob/main/ktutez.cls)  Dosyası
    * Bu dosya genel tez şablonuna yönelik ayarlamaları içermektedir.
    * LaTeX de yeniyseniz bu dosya içeriğine hiç dokunmayınız!
</div>

* * *


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/doganr/KTU-TEZ-LaTeX.svg?style=for-the-badge
[contributors-url]: https://github.com/doganr/KTU-TEZ-LaTeX/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/doganr/KTU-TEZ-LaTeX.svg?style=for-the-badge
[forks-url]: https://github.com/doganr/KTU-TEZ-LaTeX/network/members
[stars-shield]: https://img.shields.io/github/stars/doganr/KTU-TEZ-LaTeX.svg?style=for-the-badge
[stars-url]: https://github.com/doganr/KTU-TEZ-LaTeX/stargazers
[issues-shield]: https://img.shields.io/github/issues/doganr/KTU-TEZ-LaTeX.svg?style=for-the-badge
[issues-url]: https://github.com/doganr/KTU-TEZ-LaTeX/issues
[license-shield]: https://img.shields.io/github/license/doganr/KTU-TEZ-LaTeX.svg?style=for-the-badge
[license-url]: https://github.com/doganr/KTU-TEZ-LaTeX/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/rozgurdogan