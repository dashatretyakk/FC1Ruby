В книге:: Фултон Хэл. Программирование на языке Ruby. – М.: ДМК Пресс, 2007. –
688 с. приведена программа, преобразующая введенные данные о температуре в значения
шкалы Фаренгейта или Цельсия.
Запуск программы непосредственно из файла книги результата не дает.
Задание заключается в том, чтобы попытаться найти несоответствия в тексте
программы и заставить ее работать. Ниже приведен текст программы из файла книги Хэла
Фултона.
===============================================================
Пример программы
Вот небольшая интерактивная консольная программа, позволяющая переводить
температуру из шкалы Фаренгейта в шкалу Цельсия и наоборот.
print "Enter temperature and scale (С or F): "
str = gets
exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split(" ")
abort "#{temp} invalid number." if temp !~ /-?\d+/
temp = temp.to_f case scale
when "С", "с"
f = 1.8*temp + 32
when "F", "f"
с = (5.0/9.0)*(temp-32)
else
abort " Must set С or F."

16

end
if f.nil?
print "#{c} degrees C\n"
else
print "#{f} degrees F\n"
end
Ниже приведены примеры прогона этой программы. Показано, как она переводит
градусы Фаренгейта в градусы Цельсия и наоборот, а также как обрабатывает неправильно
заданную шкалу или число:
Enter temperature and scale (С or F): 98.6 F
37.0 degrees С
Enter temperature and scale (С or F): 100 С
212.0 degrees F
Enter temperature and scale (С or F):
92 G Must set С or F.
Enter temperature and scale (С or F): junk F
junk invalid number.
