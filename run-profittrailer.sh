#!/bin/bash

BASE=/opt
APP=/app
PT="ProfitTrailer"

PT_DIR=${APP}/${PT}
PT_ZIP=${BASE}/${PT}-${PT_VERSION}.zip
PT_JAR=${PT_DIR}/${PT}.jar
PT_START="java -Djava.net.preferIPv4Stack=true -Dsun.stdout.encoding=UTF-8 -XX:+UseSerialGC -XX:+UseStringDeduplication -Xms64m -Xmx512m -XX:MaxMetaspaceSize=256m -jar $PT_JAR"

[ -d "$PT_DIR" ] || mkdir -p "$PT_DIR" || {
   echo "Error: no $PT_DIR found and could not make it. Exiting."; exit -1;
}

unzip -joqd ${PT_DIR} ${PT_ZIP} ${PT}-${PT_VERSION}/${PT}.jar || {
  echo "Error: no $PT jar found. Exiting."; exit -1;
}

cd ${PT_DIR} || {
  echo "Error: problem with $PT_DIR. Exiting."; exit -1;
}

pcnt=$(/bin/ls -1 ${PT_DIR}/*.json 2>/dev/null | /usr/bin/wc -l)
[[ ${pcnt} -gt 0 ]] || {
  echo "No config found, extracting..."; unzip -jo ${PT_ZIP} -d ${PT_DIR};
  echo "Done! Reload the container."
  exit -1;
} || {
  echo "Error: no properties found and could not properly unzip $PT_ZIP. Exiting.";
  exit -1;
}

# start it
${PT_START}
