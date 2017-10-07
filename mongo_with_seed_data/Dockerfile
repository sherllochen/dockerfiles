FROM mongo

LABEL maintainer="Sherllo Chen <sherllochen@gmail.com>"

WORKDIR /tmp

COPY import_db /tmp/import_db

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 27017

CMD [ "cn_r_c_deco_dev","/tmp/import_db"]

#tip first param is database_name, place backup data im import_db
# run
#docker run -t -d -p 27017:27017 sherllo/mongo_with_seed_data:0.1 xxx /tmp/import_db
# build
# docker image build -t sherllo/mongo_with_seed_data:0.1 .
