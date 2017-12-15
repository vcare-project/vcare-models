#OS System Ubuntu
FROM ubuntu:17.10

#Update ubuntu and install Java JDK 8 and MySQL

RUN  apt-get upgrade -y  && apt-get update && apt-get install -y \
						  wget \
						  zip \
						  unzip
			  
RUN apt-get install -y software-properties-common python-software-properties && add-apt-repository ppa:webupd8team/java && apt-get update && \
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && apt-get install -y oracle-java8-installer && apt-get install -y oracle-java8-set-default


WORKDIR /home/

EXPOSE 4567

ADD vCare.gql /home/
ADD starter.sh /home/ 

RUN wget https://github.com/graknlabs/grakn/releases/download/v1.0.0/grakn-dist-1.0.0.zip  
RUN unzip *.zip -d /home/ 
RUN mkdir graphbase 
RUN mv grakn-*/* graphbase/ 
RUN rm -rf grakn*
RUN mv /home/vCare.gql /home/graphbase/ 


CMD ["/home/starter.sh"]