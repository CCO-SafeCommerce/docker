cd bancoDados
sudo docker build -t safecommercebd .
echo "-----------------"
sudo docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=sptech -e MYSQL_DATABASE=safecommerce -e MYSQL_USER=aluno -e MYSQL_PASSWORD=sptech safecommercebd

cd ..
cd Python
sudo docker build -t safecommerce-python .
echo -e "\n\nAguarde...\n\n"
sleep 10
echo "Iniciando Serviço: "
docker run -d safecommerce-python
echo -e "Serviço iniciado!"
