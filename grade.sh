CPATH='.;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area
mkdir student-submission

homeDir=`pwd`

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
cp -r TestListExamples.java grading-area
cp -r student-submission/ListExamples.java grading-area

tests=`find student-submission -name "*.java"`

for file in $tests; do
    if [ -f $file ]; then
        echo "File found."
    else
        echo "Wrong kind of file for $file"
        exit 1
    fi
done

javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples

for file in $tests; do
    if [ $? -ne 0 ]; then
        echo "Compile error."
    else
        echo "passed"
    fi
done
