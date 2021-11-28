sl=0 #УКАЖИТЕ ЗАДЕРЖКУ ДЛЯ ИГРЫ В СЕКУНДАХ
loops=13 #УКАЖИТЕ ЧИСЛО ЦИКЛОВ ДЛЯ ИГРЫ

nik=4
nikq = 4
petr =4
qpetr =4
sumn=0
sump=0

i = 0
while i<loops; nik !=64; petr !=64
    i+=1  
    col = rand(1..2).to_i

    if col == 1        
        nik*=4  
    end
    if col ==2   
        nikq*=4    
    end

    puts 'ХОД НИКОЛАЯ:', + nik.to_i, + nikq.to_i
    sleep(sl)

    if nik ==64
        if nikq==64
            puts 'nikolay победил'
            puts 'ДВА ЧИСЛА ПОБЕДА'
            nikq-=60
            nik-=60
            sumn+=1
            sleep(sl)
        else
            puts 'nikolay победил'
            puts 'ПЕРВОЕ ЧИСЛО ПОБЕДА'
            nik-=60
            nikq-=nikq
            nikq+=4
            sumn+=1
            sleep(sl)
        end
    end
    
    if nikq==64
        if nik==64
            puts 'nikolay победил'
            puts 'ДВА ЧИСЛА ПОБЕДА'
            nikq-=60
            nik-=60
            sumn+=1
            sleep(sl)
        else
            puts 'nikolay победил'
            puts 'ВТОРОЕ ЧИСЛО ПОБЕДА'
            nikq-=60
            nik-=nik
            nik+=4
            sumn+=1
            sleep(sl)
        end
    else
    end
    
    

    col = rand(1..2).to_i
    if col == 1       
        petr*=4
    end
    if col == 2  
        qpetr*=4   
    end

    puts 'ХОД ПЕТРОВИЧА:', + petr.to_i, + qpetr.to_i
    sleep(sl)

    if petr ==64
        if qpetr==64
            puts 'петрович победил'
            puts 'ДВА ЧИСЛА ПОБЕДА'
            petr-=60
            qpetr-=60
            sump+=1
            sleep(sl)
        else
            puts 'петрович победил'
            puts 'ПЕРВОЕ ЧИСЛО ПОБЕДА'
            petr-=60
            qpetr-=qpetr
            qpetr+=4
            sump+=1
            sleep(sl)
        end
    end
    
    if qpetr==64
        if petr==64
            puts 'петрович победил'
            puts 'ДВА ЧИСЛА ПОБЕДА'
            petr-=60
            qpetr-=60
            sump+=1
            sleep(sl)
        else
            puts 'петрович победил'
            puts 'ВТОРОЕ ЧИСЛО ПОБЕДА'
            qpetr-=60
            petr-=petr
            petr+=4
            sump+=1
            sleep(sl)
        end
    else
    end
    
end

puts ''
puts 'счет NIKOLAY:', +sumn
puts 'счет ПЕТРОВИЧ:', +sump

if sump > sumn
    puts 'ПЕТРОВИЧ ПОБЕДИТЕЛЬ'
end
if sumn > sump
    puts 'nikolay ПОБЕДИТЕЛЬ'
end
if sump==sumn 
    puts 'ВСЕ ПРОИГРАЛИ'
end