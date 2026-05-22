echo " give the name of the file:"
read file
log="/root/error.log"
found=$(find / -type f -name $file)
if [ -n "$found" &>> "log" ]; then
echo " file exists"
echo "$fond"
else 
echo "file not exists"
fi
