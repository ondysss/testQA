#language: ru

@tree

Функционал: Тестирование документа Заказ

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Тест документа Заказ
И я закрываю все окна клиентского приложения
* Загрузка данных
	//Когда подготовка данных 
* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Мясная лавка"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* Заполнение табличной части	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Изменение количества 	
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу значение выражения '{Строка(10*2)}'	
//	И Я запоминаю значение поля с именем 'ТоварыКоличество' как '{Число("Количество")}'		
	И тест количества
	
* Изменение количества 
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '15,00'			
	И Я запоминаю значение выражения '15' в переменную "Количество"
	И тест количества

	
	
	