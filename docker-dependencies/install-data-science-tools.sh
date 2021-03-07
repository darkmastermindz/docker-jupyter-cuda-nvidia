apt-get update -y && apt-get -y upgrade &&\ 
	wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh &&\ 
	sha256sum Anaconda3-2019.03-Linux-x86_64.sh | echo &&\
	sudo chmod +x Anaconda3-2019.03-Linux-x86_64.sh &&\
	./Anaconda3-2019.03-Linux-x86_64.sh &&\
	source ~/.bashrc
