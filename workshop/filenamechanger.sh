from="webfastoche"
to="fastoche"
files=`find . -name "*$from*"`
for i in $files 
    do echo mv $i ${i/$from/$to}
    mv $i ${i/$from/$to}
done