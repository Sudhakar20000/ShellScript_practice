echo " give the name of the file:"
read file
if [ -f "$file" ]; then
echo "the file exist"
else 
echo "the file not exists"
fi