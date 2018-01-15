#!/usr/bin/python

from suds.client import Client
import xml.etree.ElementTree as mXml

url = 'http://www.webservicex.net/globalweather.asmx?wsdl'

# Si estas desarrollando tu propio WS te recomiendo utilizar cache=None
# de esa manera el WSDL no quedara almacenado en cache y al modificarlo
# estaras consumiendo siempre el WS con la definicion mas reciente.
client = Client(url, cache=None)

# Con esto puedes ver todos los metodos disponibles del WS
#print(client)

response = client.service.GetCitiesByCountry('Nicaragua')

tree = mXml.fromstring(response)

for city in tree:
    print(city.find('City').text + ' is city of: ' + city.find('Country').text)
