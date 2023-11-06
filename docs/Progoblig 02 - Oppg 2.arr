use context essentials2021
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
# oppgave a)
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize komponent using string-sanitizer
    sanitize energi using string-sanitizer
end
"Tabell 1"
kWh-wealthy-consumer-data
# for å få inn riktige verdier i tabellen brukte jeg koden fra dokumentet og sanitize energi using string-sanitizer. 

# oppgave b)
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 125
  end
where:
  energi-to-number("") is 125
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("12") is 12
  energi-to-number("48") is 48
end

# oppgave c)
"Oppdatert tabell"
oppdatert-tabell = transform-column(kWh-wealthy-consumer-data, "energi",  energi-to-number)
oppdatert-tabell 
# overførte data fra type string til type number

"Forbruk bil"
distance-travelled-per-day = 50
distance-per-unit-of-fuel = 4
energy-per-unit-of-fuel = 10

energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                       energy-per-unit-of-fuel
energy-per-day

# oppgave d)
"Forbruk totalt"
energiforbruk = sum(oppdatert-tabell, "energi")
energiforbruk

# oppgave e)
bar-chart(oppdatert-tabell, "komponent", "energi")
