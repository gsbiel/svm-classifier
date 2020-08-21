# A partir da imagem abaixo
FROM python:3

# Diretório dentro do container que quero trabalhar
WORKDIR /usr/src/app

RUN pip install tensorflow
RUN pip install tensorflow_datasets
RUN pip install jupyter
RUN pip install ipython
RUN pip install pandas
RUN pip install nltk
RUN pip install numpy
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install pillow
RUN pip install sklearn

RUN tf_upgrade_v2 -h

EXPOSE 8080

# Origem: Diretório onde está o dockerfile
# Destino: Diretório definido no WORKDIR
COPY locations_to_be_labeled.csv .

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]