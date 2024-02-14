if [ -z "$1" ]; then
    echo "ERROR: No day given"
    exit 1
fi

YEAR="2023"

mkdir "$1"
cp ./.blank/** "./$1"

echo "module github.com/rgmfn/aoc$YEAR/$1

go 1.20" >> "./$1/go.mod"
touch "./$1/test.txt"
touch "./$1/input.txt"
