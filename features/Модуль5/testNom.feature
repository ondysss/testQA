#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
И я запоминаю значение выражения "1" в переменную "Шаг"
И я делаю 10 раз
	И я запоминаю значение выражения "$Шаг$+1" в переменную "Шаг"
	И я запоминаю значение выражения '"Номенклатура."+$Шаг$' в переменную "Номенклатура"
	И  я запоминаю количество строк таблицы "List" как "МаксимальныйКодНоменклатуры"
	И я запоминаю значение выражения '$МаксимальныйКодНоменклатуры$+$Шаг$' в переменную "Код"
	
	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                             | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID,"-","")}' | 'False'        | $Код$  | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58792'  | ''            | '$Номенклатура$' | ''                 | ''               | ''               |          |          |          |          |         |
