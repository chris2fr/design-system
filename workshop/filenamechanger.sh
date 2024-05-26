echo "File Name Changer"
from="cefran_lesgrandsvoisins"
to="theme_lesgrandsvoisins"
for i in `find . -name "*$from*"  -not -path "./venv/*"` 
    do echo "mv $i ${i/$from/$to}"
    mv $i ${i/$from/$to}
done
echo "File Name Changer Done"
