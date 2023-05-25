#API que lista  los nombres de diferentes pokemons
import requests

def get_pokemons(url):

    response = requests.get(url)
    
    if response.status_code == 200:
        payload = response.json()
        results = payload.get('results')
        next = payload.get('next')

    for pokemon in results:
        name = pokemon['name']
        print(name)
    
    opcion = input("¿Continuar listando? [Y/N]").lower()
    if opcion == 'y':
        get_pokemons(url=next)

if __name__ == '__main__':
    get_pokemons('http://pokeapi.co/api/v2/pokemon-form/')