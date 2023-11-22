use context essentials2021
include color

#vindu
overlay-xy(circle(10, "solid", color(255, 255, 255, 1)), -10, -15,
  overlay-xy(circle(10, "solid", color(255, 255, 255, 1)), -40, -15,
    #dør
    overlay-xy(rectangle(20, 30, "solid", color(0, 0, 0, 1)), -40, -50,
      #hus
      rectangle(70, 80, "solid", color(255, 0, 0, 1)))))

