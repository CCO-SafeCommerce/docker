cd BancoDados
sudo docker build -t safecommercebd .
echo "-----------------"
sudo docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=sptech -e MYSQL_DATABASE=safecommerce -e MYSQL_USER=aluno -e MYSQL_PASSWORD=sptech safecommercebd

cd ..
cd Python
git clone https://github.com/CCO-SafeCommerce/API-Python.git

sudo docker build -t safecommerce-python .
echo -e "\n\nAguarde...\n\n"
sleep 10
echo "Iniciando Serviço: "
sudo docker run -it safecommerce-python
echo -e "Serviço iniciado!"
