echo " give the name of the file:"
read file
find . -type f -name $file
if [ $? -eq 0 ]; then
echo "the file exist"
else 
echo "the file not exists"
fi