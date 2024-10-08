# Mongolian-phonetic keyboard layout for IBus/Ubuntu


Яг Латин үсгээр бичиж байгаа юм шиг криллээр бичих Ubuntu (бусад linux) зориулсан
keyboard layout.  

Жишээ нь:  
**“Mongol hel”**  
гэж бичихэд  
**“Монгол хэл”**  
гэж бичигдэх юм.  

Шинээр товчлуурын байршил цээжлэх, кийбоoрд дээрээ  
крилл үсгийн хуулга нэмж наах хэрэг огт байхгүй. Туршаад үзээрэй.  

Доорх жагсаалтын зүүн талд байгаа крилл үсгүүдийг бичихийн тулд баруун  
талд байгаа латин товчуудыг дарахад хангалттай.  

| | |
--- | ---
ц | ts эсвэл c  
ч | ch  
ш | sh  
я | ya  
е | ye  
ё | yo  
ө | q  
ү | w  
в | v  
й | i'
ай | ai 
үй | wi
ы | y  
ь | '  
Ь | '' /хоёр single-quote/  
ъ | "  /double-quote/  
Ъ | ""   

### Суулгахдаа:   
1: Уг repository-г татан дараах коммандыг уншуулж суулгана. 
```bash
bash install.sh
```

2: Дараах коммандаар ibus тохиргоо руу орж, Input Method хэсэгт Mongolian-Phonetic-г нэмнэ. 
```bash
ibus-setup
```

3: Үйлдлийн системийнхээ Keyboard Settings хэсгийн, Keyboard Input Sources хэсэгт  Mongolian-Phonetics-г нэмнэ. 

Voila!

Жич: Уг layout-г Ubuntu 24.04 дээр туршиж үзсэн болно. 
