from="cmsfastoche"
to="wagtailfastoche"
files=`find . -name "*$from*"`
for i in $files 
    do echo mv $i ${i/$from/$to}
    mv $i ${i/$from/$to}
done
