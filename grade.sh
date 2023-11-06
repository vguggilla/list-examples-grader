CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
cp -r lab4/*Tests.java grading-area

tests=`find student-submission -name "*.java"`
# for file in tests; do
    if [ -f $file ]; then
        echo "passed"
    else
        echo "Wrong kind of file for $file"
        exit 1
    fi
done

