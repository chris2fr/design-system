echo "File Name Changer"
from="cfran"
to="fastoche"
find . -name "*$from*" > /tmp/l
for i in `cat /tmp/l` 
    do echo "mv $i ${i/$from/$to}"
    mv $i ${i/$from/$to}
done
echo "File Name Changer Done"
