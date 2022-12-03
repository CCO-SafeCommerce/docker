cd bancoDados
sudo docker build -t safecommercebd .
echo "-----------------"
sudo docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=sptech -e MYSQL_DATABASE=safecommerce -e MYSQL_USER=aluno -e MYSQL_PASSWORD=sptech safecommercebd
echo -e "\n Banco de Dados rodando!"
cd ..
echo -e "\nIniciando Verificação de Instalação do Java"
java -version
if [ $? -eq 0 ]
    then
		echo "Você já tem o java instalado!"
	else
		echo -e "\n\nIrei instalar o Java para você!"
        sleep 2
		sudo add-apt-repository ppa:webupd8team/java -y
		sleep 2
		sudo apt update -y
		sudo apt install default-jre && sudo apt install openjdk-11-jre-headless -y
        echo -e "\n\n Java instalado com sucesso!"
fi
echo -e "\n\n Abrindo o Java... Aguarde"
sleep 2

java -jar ./SafeCommerce.jar
		
