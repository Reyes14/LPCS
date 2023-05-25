from bs4 import BeautifulSoup
import requests

url = 'https://resultados.as.com/resultados/futbol/primera/clasificacion/'
page = requests.get(url)

soup = BeautifulSoup(page.content, 'html.parser')

#Equipos
eq = soup.find_all('span', class_='nombre-equipo')
equipos = list ()

cont = 0
for i in eq:
    if cont < 20:
        equipos.append(i.text)
    else:
        break
    cont+=1

#Puntos
pt = soup.find_all('td', class_='destacado')
puntos = list ()

cont = 0
for i in pt:
    if cont < 20:
        puntos.append(i.text)
    else:
        break
    cont+=1

dictionary = dict(zip(equipos, puntos))

resultados = open('resultados.txt', 'w')

for clave, valor in dictionary.items():
    resultados.write(clave + ':' + valor + '\n')

resultados.close