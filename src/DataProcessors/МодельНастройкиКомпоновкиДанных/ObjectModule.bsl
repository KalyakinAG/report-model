Перем Настройки Экспорт;
Перем ВыбранноеПоле;
Перем ГруппаВыбранныхПолей;
Перем ГруппаОтбора;
Перем ЭлементОтбора;
Перем Группировка;
Перем ПолеГруппировки;
Перем Таблица;
Перем ЭлементУсловногоОформления;
Перем ОформляемоеПоле;

Функция УсловноеОформление() Экспорт
	ЭлементУсловногоОформления = Настройки.УсловноеОформление.Элементы.Добавить();
	Возврат ЭтотОбъект;
КонецФункции

Функция Оформление(ИмяПараметра, ЗначениеПараметра) Экспорт
	ЭлементУсловногоОформления.Оформление.УстановитьЗначениеПараметра(ИмяПараметра, ЗначениеПараметра);
	Возврат ЭтотОбъект;
КонецФункции

Функция ОформляемоеПоле(ИмяПоля) Экспорт
	ОформляемоеПоле = ЭлементУсловногоОформления.Поля.Элементы.Добавить();
	ОформляемоеПоле.Поле  = Новый ПолеКомпоновкиДанных(ИмяПоля);
	ОформляемоеПоле.Использование = Истина;
	Возврат ЭтотОбъект;
КонецФункции

Функция Выбор() Экспорт
	Возврат ЭтотОбъект;
КонецФункции

Функция Поле(ИмяПоля) Экспорт
	Если ГруппаВыбранныхПолей = Неопределено Тогда
		ВыбранноеПоле = Настройки.Выбор.Элементы.Добавить(Тип("ВыбранноеПолеКомпоновкиДанных"));
	Иначе
		ВыбранноеПоле = ГруппаВыбранныхПолей.Элементы.Добавить(Тип("ВыбранноеПолеКомпоновкиДанных"));
	КонецЕсли;
	ВыбранноеПоле.Использование = Истина;
	ВыбранноеПоле.Поле = Новый ПолеКомпоновкиДанных(ИмяПоля);
	Возврат ЭтотОбъект;
КонецФункции

Функция ГруппаНачать(Заголовок, Расположение = Неопределено) Экспорт
	Если ГруппаВыбранныхПолей = Неопределено Тогда
		ГруппаВыбранныхПолей = Настройки.Выбор.Элементы.Добавить(Тип("ГруппаВыбранныхПолейКомпоновкиДанных"));
	Иначе
		ГруппаВыбранныхПолей = ГруппаВыбранныхПолей.Элементы.Добавить(Тип("ГруппаВыбранныхПолейКомпоновкиДанных"));
	КонецЕсли;
	ГруппаВыбранныхПолей.Использование = Истина;
	ГруппаВыбранныхПолей.Расположение = ?(Расположение = Неопределено, РасположениеПоляКомпоновкиДанных.Авто, Расположение);
	ГруппаВыбранныхПолей.Заголовок = Заголовок;
	Возврат ЭтотОбъект;
КонецФункции

Функция ГруппаЗавершить() Экспорт
	ГруппаВыбранныхПолей = ГруппаВыбранныхПолей.Родитель;
	Возврат ЭтотОбъект;
КонецФункции

Функция ОтборГруппаНачать(ТипГруппы) Экспорт
	Если ГруппаОтбора = Неопределено Тогда
		ГруппаОтбора = Настройки.Отбор.Элементы.Добавить(Тип("ГруппаЭлементовОтбораКомпоновкиДанных"));
	Иначе
		ГруппаОтбора = ГруппаОтбора.Элементы.Добавить(Тип("ГруппаЭлементовОтбораКомпоновкиДанных"));
	КонецЕсли;
	ГруппаОтбора.Использование = Истина;
	ГруппаОтбора.ТипГруппы = ТипГруппы;
	Возврат ЭтотОбъект;
КонецФункции

Функция ОтборГруппаИНачать() Экспорт
	ОтборГруппаНачать(ТипГруппыЭлементовОтбораКомпоновкиДанных.ГруппаИ);
	Возврат ЭтотОбъект;
КонецФункции

Функция ОтборГруппаИЛИНачать() Экспорт
	ОтборГруппаНачать(ТипГруппыЭлементовОтбораКомпоновкиДанных.ГруппаИли);
	Возврат ЭтотОбъект;
КонецФункции

Функция ОтборГруппаНЕНачать() Экспорт
	ОтборГруппаНачать(ТипГруппыЭлементовОтбораКомпоновкиДанных.ГруппаНе);
	Возврат ЭтотОбъект;
КонецФункции

Функция ОтборГруппаЗавершить() Экспорт
	ГруппаОтбора = ГруппаОтбора.Родитель;
	Возврат ЭтотОбъект;
КонецФункции

Функция Отбор(ИмяПоля, Значение, ВидСравнения = Неопределено) Экспорт
	Если ГруппаОтбора = Неопределено Тогда
		ЭлементОтбора = Настройки.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	Иначе
		ЭлементОтбора = ГруппаОтбора.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	КонецЕсли;
	ЭлементОтбора.Использование = Истина;
	ЭлементОтбора.ЛевоеЗначение = ?(ТипЗнч(ИмяПоля) = Тип("Строка"), Новый ПолеКомпоновкиДанных(ИмяПоля), ИмяПоля);
	ЭлементОтбора.ПравоеЗначение = Значение;
	ЭлементОтбора.ВидСравнения = ?(ВидСравнения = Неопределено, ВидСравненияКомпоновкиДанных.Равно, ВидСравнения);
	Возврат ЭтотОбъект;
КонецФункции

Функция Порядок(ИмяПоля, ТипУпорядочивания = Неопределено) Экспорт
	ЭлементПорядка = Настройки.Порядок.Элементы.Добавить(Тип("ЭлементПорядкаКомпоновкиДанных"));
	ЭлементПорядка.Поле = Новый ПолеКомпоновкиДанных(ИмяПоля);
	ЭлементПорядка.ТипУпорядочивания = ?(ТипУпорядочивания = Неопределено, НаправлениеСортировкиКомпоновкиДанных.Возр, ТипУпорядочивания);
	ЭлементПорядка.Использование = Истина;
	Возврат ЭтотОбъект;
КонецФункции

Функция Структура() Экспорт
	Возврат ЭтотОбъект;
КонецФункции

Функция ГруппировкаНачать(ИмяГруппировки = Неопределено) Экспорт
	Если Группировка = Неопределено Тогда
		Группировка = Настройки.Структура.Добавить(Тип("ГруппировкаКомпоновкиДанных"));
	ИначеЕсли ТипЗнч(Группировка) = Тип("ГруппировкаТаблицыКомпоновкиДанных") Тогда
		Группировка = Группировка.Структура.Добавить();
	Иначе
		Группировка = Группировка.Структура.Добавить(Тип("ГруппировкаКомпоновкиДанных"));
	КонецЕсли;
	Группировка.Использование = Истина;
	Если ИмяГруппировки <> Неопределено Тогда
		Группировка.Имя = ИмяГруппировки;
	КонецЕсли;
	ВыбранноеПоле = Группировка.Выбор.Элементы.Добавить(Тип("АвтоВыбранноеПолеКомпоновкиДанных"));
	ВыбранноеПоле.Использование = Истина;
	Возврат ЭтотОбъект;
КонецФункции

Функция ПолеГруппировки(ПутьКДанным) Экспорт
	Если ПутьКДанным = "*" Тогда
		ПолеГруппировки = Группировка.ПоляГруппировки.Элементы.Добавить(Тип("АвтоПолеГруппировкиКомпоновкиДанных"));
		Возврат ЭтотОбъект;
	КонецЕсли;
	ПолеГруппировки = Группировка.ПоляГруппировки.Элементы.Добавить(Тип("ПолеГруппировкиКомпоновкиДанных"));
	ПолеГруппировки.Использование = Истина;
	ПолеГруппировки.Поле = ?(ТипЗнч(ПутьКДанным) = Тип("Строка"), Новый ПолеКомпоновкиДанных(ПутьКДанным), ПутьКДанным);
	Возврат ЭтотОбъект;
КонецФункции

Функция ГруппировкаЗавершить() Экспорт
	Группировка = Группировка.Родитель;
	Возврат ЭтотОбъект;
КонецФункции

Функция ТаблицаНачать() Экспорт
	Если Группировка = Неопределено Тогда
		Таблица = Настройки.Структура.Добавить(Тип("ТаблицаКомпоновкиДанных"));
	Иначе
		Таблица = Группировка.Структура.Добавить(Тип("ТаблицаКомпоновкиДанных"));
	КонецЕсли;
	Возврат ЭтотОбъект;
КонецФункции

Функция ТаблицаЗавершить() Экспорт
	Группировка = Таблица.Родитель;
	Таблица = Неопределено;
	Возврат ЭтотОбъект;
КонецФункции

Функция Строки() Экспорт
	Группировка = Таблица.Строки.Добавить();
	Группировка.Использование = Истина;
	ВыбранноеПоле = Группировка.Выбор.Элементы.Добавить(Тип("АвтоВыбранноеПолеКомпоновкиДанных"));
	ВыбранноеПоле.Использование = Истина;
	Возврат ЭтотОбъект;
КонецФункции

Функция Колонки() Экспорт
	Группировка = Таблица.Колонки.Добавить();
	Группировка.Использование = Истина;
	ВыбранноеПоле = Группировка.Выбор.Элементы.Добавить(Тип("АвтоВыбранноеПолеКомпоновкиДанных"));
	ВыбранноеПоле.Использование = Истина;
	Возврат ЭтотОбъект;
КонецФункции
