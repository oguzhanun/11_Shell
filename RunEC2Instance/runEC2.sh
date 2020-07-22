aws ec2 run-instances \
   --image-id ami-0915e09cc7ceee3ab \
   --count 1 \
   --instance-type t2.micro \
   --key-name MyKeyNV \
   --user-data file://user-data.sh \
   --security-group-ids sg-08a4832c91e3ab550 \
   --subnet-id subnet-63689442 