#Importar imagem do docker, neste caso importar o python (alpine é mais leve)
FROM python:3.8.11-alpine3.14 

#Diretorio onde do container do docker
WORKDIR /usr/app/testedocker 

RUN pip install --upgrade pip
#copia o requirements.txt para o container
COPY requirements.txt ./

#baixa as dependencias
RUN pip install -r requirements.txt

#copia o resto dos arquivos para o container
COPY . .

CMD [ "python3", "train.py" ]