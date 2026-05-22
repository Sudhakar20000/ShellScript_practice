echo " give the name of the file:"
read file
found=$(find / -type f -name $file)
if [ -n $found ]; then
echo " file exists"
else 
echo "file not exists"
fi
echo " file locations $found"