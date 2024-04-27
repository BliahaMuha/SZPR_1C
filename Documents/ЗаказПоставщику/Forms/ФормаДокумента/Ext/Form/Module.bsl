﻿
&НаСервере
Процедура СЗПР_ПриСозданииНаСервереПосле(Отказ, СтандартнаяОбработка)
	
	ДобавитьЭлементыНаФорму();	
	
КонецПроцедуры

&НаСервере
Процедура ДобавитьЭлементыНаФорму()
	
	Если Элементы.Найти("СЗПР_ПланПотребностейВМатериалах") = Неопределено Тогда
		
		// Вначале просто добавляем элемент в коллекцию Элементы
		НовыйЭлемент = Элементы.Добавить("СЗПР_ПланПотребностейВМатериалах", Тип("ПолеФормы"));		
		//Затем донастраиваем его и указываем нужные свойства
		НовыйЭлемент.ПутьКДанным = "Объект.СЗПР_ПланПотребностейВМатериалах";
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода; 
		НовыйЭлемент.Заголовок = "План потребностей в материалах";
		
		Элементы.Переместить(НовыйЭлемент, ЭтаФорма.Элементы.ГруппаДополнительныеРеквизиты);
		
	КонецЕсли;	

КонецПроцедуры
