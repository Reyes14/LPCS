import base64

texto = input("Ingresa la ruta del archivo de texto: ")

with open(texto, 'rb') as f:
    image = f.read()

txt_encode = texto.encode('utf-8')
encoded_bytes = base64.b64encode(txt_encode)
encoded_string = encoded_bytes.decode('utf-8')

with open('txt_codificados.txt', 'w') as f:
    f.write(encoded_string)