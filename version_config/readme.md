 
 <h3 align="right"><a href="https://pay.cloudtips.ru/p/f84bf0b2" target="_blank">ваше "спасибо" автору</a></h3>
 
 вот  [**конфиги**](/version_config/1_3_2_20/) отлаженные с макросами для к1✋. как пользоваться; на скрине указано какие компоненты из скрипта [**гладиолуса**]([https://github.com/Guilouz/Creality-K1-and-K1-Max](https://github.com/Guilouz/Creality-K1-and-K1-Max/wiki/Installation-Helper-Script)) установлены, устанавливаете по пунктам,  потом заливаете к себе в конфиг вместо ваших. всё. все работает. 

что сделано:
все конфиги исправлены с изменением и добавлением компонентов, исправлены конфиги  макросов, исправлены различные мелочи типа отображения температур, интегрированы обновления. все скрипты которые установлены сразу добавлены в конфиги в нужное место с правильными исправлениями. 


пы.сы. бекапы наше всё😁 поэтому чтоб потом не биться головой об стену сначала копируете свои файлы себе в отдельную папочку потом уже меняете на мои. это конфиг для стокового к1 без замены шкивов. 

что вы получите?  флюид и мунрейкером, таймлапсы, бипер в конце печати, изменена логика кулеров, адаптивная сетка стола, чтоб ей пусто было, присобачил еще настройки камеры но пока не занимался ими плотно, никаких сраных обико! ИМХО есть приложение от креалити, она хоть не фонтан зато работает без нагрузки на принтер и вшито уже так что нефиг велик изобретать.

ОБЯЗАТЕЛЬНО!!! провести тесты  шейперов и  пидов стола и экструдера!!!


и еще, там чтоб нормальные программы доступа к файловой системе работали, а все они любят sftp поэтому установлен enterware и потом в консоли ssh добавить компонент 
```
opkg install openssh-sftp-server; ln -s /opt/libexec/sftp-server /usr/libexec/sftp-server
```

**если возникает проблема с загрузкой Fluid или Mainsail** необходимо доустонавить еще компонент ```opkg install wget-ssl```


мой выбор программы доступа для винды это: [**Bitvise SSH Client**](https://www.bitvise.com/ssh-client-download)


**если ваш слайсер PRUSA и у вас не работает исключение обьектов:**

 вот это добавьте в конфиг  gcode_macro.cfg
```
[gcode_macro DEFINE_OBJECT]
gcode:
  EXCLUDE_OBJECT_DEFINE {rawparams}

[gcode_macro START_CURRENT_OBJECT]
gcode:
  EXCLUDE_OBJECT_START NAME={params.NAME}

[gcode_macro END_CURRENT_OBJECT]
gcode:
  EXCLUDE_OBJECT_END {% if params.NAME %}NAME={params.NAME}{% endif %}

[gcode_macro LIST_OBJECTS]
gcode:
  EXCLUDE_OBJECT_DEFINE

[gcode_macro LIST_EXCLUDED_OBJECTS]
gcode:
  EXCLUDE_OBJECT

[gcode_macro REMOVE_ALL_EXCLUDED]
gcode:
  EXCLUDE_OBJECT RESET=1
```
![](config.jpg)
