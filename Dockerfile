FROM python:2.7

LABEL name Zeus-Scanner
LABEL project_creator Ekultek
LABEL dockerfile_maintainer khast3x

RUN apt update && apt install -y libxml2-dev libxslt1-dev git python-pip python-dev \
                && apt install -y sqlmap nmap iceweasel \ 
                && git clone https://github.com/ekultek/zeus-scanner.git \ 
                && cd zeus-scanner \
                && pip2 install -r requirements.txt

ENTRYPOINT ["bash"]
# CMD ["--help"]