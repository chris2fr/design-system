echo "File Name Changer"
from="fastoche"
to="cefran"
for i in `find . -name "*$from*"` 
    do echo "mv $i ${i/$from/$to}"
    mv $i ${i/$from/$to}
done
echo "File Name Changer Done"
