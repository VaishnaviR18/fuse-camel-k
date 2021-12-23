sed -i -e '/"apache-maven"/{N;s/sha512:.*/sha512: "'$1'"/}' overrides-art.yaml
sed -i -e '/"apache-maven"/{N;N;s/url:.*/url: "https:\/\/archive.apache.org\/dist\/maven\/maven-\/'$2'\/binaries\/apache-maven-'$2'-bin.tar.gz"/}' overrides-art.yaml
sed -i -e '/"apache-maven"/{N;N;N;s/target:.*/target: "apache-maven-'$2'-bin.tar.gz"/}' overrides-art.yaml

sed -i -e '/"apache-camel-k-runtime"/{N;s/sha512:.*/sha512: "'$3'"/}' overrides-art.yaml
sed -i -e '/"apache-camel-k-runtime"/{N;N;s/url:.*/url: "http:\/\/indy.psi.redhat.com\/api\/content\/maven\/group\/redhat-builds\/org\/apache\/camel\/k\/apache-camel-k-runtime\/'$4'\/apache-camel-k-runtime-'$4'-m2.zip"/}' overrides-art.yaml
sed -i -e '/"apache-camel-k-runtime"/{N;N;N;s/target:.*/target: "apache-camel-k-runtime-'$4'-m2.zip"/}' overrides-art.yaml