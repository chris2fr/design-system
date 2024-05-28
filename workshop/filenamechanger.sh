echo "File Name Changer"
from="cefran"
to="village"
for i in `find . -name "*$from*"  -and -not -path "./venv/*"` 
    do echo "mv $i ${i/$from/$to}"
    mv $i ${i/$from/$to}
done
echo "File Name Changer Done"
