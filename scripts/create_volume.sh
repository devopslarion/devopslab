dockeraws='sudo docker -H localhost:2374'
dockeraws volume create \
-d "cloudstor:aws" \
--opt ebstype=io1 \
--opt size=4 \
--opt iops=100 \
--opt backing=relocatable \
$1
