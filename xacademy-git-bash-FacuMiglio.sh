#!/bin/bash

git clone https://github.com/FacuMiglio/xacademy.git

mkdir loremipsum
cd loremipsum

git init 

git checkout -b generarlipsum
echo "Creating Branch..."

touch limpsum.sh
lipsum.sh << EOF
#!/bin/bash

for i in {1..5}
do
    #obtiene una cantidad aleatoria de número de lineas entre 1 y 20
    lineas=$(shuf -i 1-20 -n 1)
    #llama con curl a lipsum.com y le pasa como parámetro la cantidad de líneas
    lorem=$(curl -s https://www.lipsum.com/feed/xml\?amount\=$lineas | sed -n '/<lipsum>/,/<\/lipsum>/p' | sed -e 's/<lipsum>//g' -e 's/<\/lipsum>//g'
)   
    #crea un archivo con el contenido de la variable lorem
    echo "$lorem" >> loremipsum-$i.txt
done
EOF

echo "limpsum.sh created"

chmod +x lipsum.sh
lipsum.sh
echo "lipsum.sh executed"

for i in loremipsum-$i.txt
do
    if [ wc -l > 1 ]
    then
        echo "loremipsum-$1.txt is OK"
    else
        echo "loremipsum-$1.txt is EMPTY"
    fi
done

echo "Updating a commiting to Github..."

git add .
git commit -b
git push

echo "updated to Github"

touch contar.sh
contar.sh << EOF
#!/bin/bash

EOF
for i in loremipsum-$i.txt
do
    contarsh= wc 

echo "loremipsum-$1.txt tiene $i lineas "



