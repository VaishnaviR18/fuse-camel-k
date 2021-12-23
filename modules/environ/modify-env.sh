sed -i -e '/CAMEL_K_VERSION/{N;s/value:.*/value: "'$1'"/}' module.yaml
sed -i -e '/CAMEL_K_TAG/{N;s/value:.*/value: "'$2'"/}' module.yaml
sed -i -e '/CAMEL_K_RUNTIME_VERSION/{N;s/value:.*/value: "'$3'"/}' module.yaml
sed -i -e '/CAMEL_QUARKUS_VERSION/{N;s/value:.*/value: "'$4'"/}' module.yaml
sed -i -e '/CAMEL_VERSION/{N;s/value:.*/value: "'$5'"/}' module.yaml
sed -i -e '/MAVEN_VERSION/{N;s/value:.*/value: "'$6'"/}' module.yaml
sed -i -e '/IMAGE_NAME/{N;s/value:.*/value: "'$7'"/}' module.yaml