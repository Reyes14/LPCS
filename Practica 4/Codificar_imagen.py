import base64

imagen = input("Ingresa la ruta de la imagen: ")

with open(imagen, 'rb') as f:
    image = f.read()

encoded_bytes = base64.b64encode(image)
encoded_string = encoded_bytes.decode('utf-8')

with open('Practica 4\imagenes_codificadas.txt', 'w') as f:
    f.write(encoded_string)
    