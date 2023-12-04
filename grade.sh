CPATH='.:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [[ ! -f 'student-submission/ListExamples.java' ]]
then 
    echo "Wrong file submitted"
    exit
fi

cp -r student-submission/ListExamples.java grading-area
cp TestListExamples.java grading-area
cd grading-area
javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples


# tests=`find test-files -name "*.txt"`
# for file in $tests
# do
#     echo $file
#     output `java $student-submission < $file`
#     expected = `cat $file.expect`
#     if[[$output==$expected]]
#     then
#         echo "they were equal"
#     else 
#         echo "$file: mismatched output and expected"
#     fi
# done

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
