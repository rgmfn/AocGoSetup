YEAR="2023"
USERNAME="your user here"

if [ "$USERNAME" = "your user here" ]; then
    echo "Please change the value of the USERNAME variable."
    exit 1
elif [ -z "$1" ]; then
    echo "ERROR: No day given"
    exit 1
fi

mkdir "$1"
cp ./.blank/** "./$1"

echo "module github.com/$USERNAME/aoc$YEAR/$1

go 1.20" >> "./$1/go.mod"
touch "./$1/test.txt"
touch "./$1/input.txt"
