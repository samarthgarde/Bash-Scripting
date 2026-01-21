echo "we are defining the variables"
folder_name="scripts"
file1="test.py"
file2="sum.sh"

echo "creating '$folder_name'"
mkdir -p $folder_name

echo "creating two files inside $fo	"
touch "$folder_name/$file1" "$folder_name/$file2"

echo "two files $file1 and $file2 are created inside $folder_sname successfully"
echo "below is the structure of $folder_name"
ls -R
