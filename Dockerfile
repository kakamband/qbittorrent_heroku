FROM benchao/qb:1.3


COPY root /

RUN sudo chmod 777 /start.sh
CMD bash start.sh