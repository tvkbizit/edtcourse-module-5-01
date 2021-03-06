
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ОбновитьКартуМаршрута();
КонецПроцедуры

&НаСервере
Процедура ПослеЗаписиНаСервере(ТекущийОбъект, ПараметрыЗаписи)
	ОбновитьКартуМаршрута();
КонецПроцедуры

&НаСервере
Процедура ОбновитьКартуМаршрута()
	
	КартаМаршрута = РеквизитФормыВЗначение("Объект").ПолучитьКартуМаршрута();

КонецПроцедуры

&НаКлиенте
Процедура ОбработкаОповещения(ИмяСобытия, Параметр, Источник)
	
	Если ИмяСобытия = "Задача выполнена" и Параметр = Объект.Ссылка Тогда
		Прочитать();
		ОбновитьКартуМаршрута();
	КонецЕсли;
	
КонецПроцедуры

