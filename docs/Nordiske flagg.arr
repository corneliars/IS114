use context essentials2021
include color
fun nordic-flag(c1, c2, c3) -> Image:
  doc: "produserer ett nordisk korsflagg"
  
  frame( #Bruker frame( for å "tegne" funksjonen med en ramme rundt
    overlay-xy(rectangle(30, 240, "solid", c3), -105, 0,
      #den innerste loddrette delen av korset
      overlay-xy(rectangle(330, 30, "solid", c3), 0, -105,
        #den innerste vannrette delen av korset
        overlay-xy(rectangle(60, 240, "solid", c2), -90, 0,
          #den ytterste loddrette delen av korset
          overlay-xy(rectangle(330, 60, "solid", c2), 0, -90,
            #den ytterste vannrette delen av korset
            rectangle(330, 240, "solid", c1))))))
  #bakgrunnen 
end

Norge = nordic-flag(color(186, 12, 47, 1), color(255, 255, 255, 1), color(0, 32, 91, 1))
Sverige = nordic-flag(color(0, 106, 167,1), color(254, 204, 2, 1), color(254, 204, 2, 1))
Danmark = nordic-flag(color(200, 16, 46, 1), color(255, 255, 255, 1), color(255, 255, 255, 1))
Finland = nordic-flag(color(255, 255, 255, 1), color(0, 47, 108, 1), color(0, 47, 108, 1))
Island = nordic-flag(color(2, 82, 156, 1), color(255, 255, 255, 1), color(220, 30, 53, 1))
Faeroyene = nordic-flag(color(255, 255, 255, 1), color(0, 101, 189, 1), color(237, 41, 57, 1))

#Bruker RGB-fargekodene for å få de rette fargene til flaggene 

Nordiske-flagg = frame(
  above( Norge,
    above( Sverige,
      above( Danmark,
        above( Finland,
          above( Island, Faeroyene))))))
Nordiske-flagg
