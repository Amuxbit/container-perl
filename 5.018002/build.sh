#!/bin/bash

DOCKERNAME="amuxbit/docker-perl:5.018002"

time docker build --force-rm -t $DOCKERNAME .

if [ $? -eq 0 ]; then
  echo
  echo
  echo "To pull it"
  echo "    docker pull $DOCKERNAME"
  echo
  echo "To use this docker:"
  echo "    docker run -d -P $DOCKERNAME"
  echo
  echo "To run a specific perl program:"
  echo "    docker run -t -i $DOCKERNAME /opt/perl5/perls/perl-5.20.2/bin/perl -e \"print('hi from inside a container running perl version ', $])\""
  echo
  echo "To run in interactive mode for debug:"
  echo "    docker run -t -i $DOCKERNAME /bin/bash -lc \"source /etc/environment && bash\""
  echo
else 
  echo
  echo "There was an error with the docker build, see the console log."
  echo
fi;
