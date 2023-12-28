git checkout main

for file in tokenized_markdown/*.md
do
    policyfile=`echo $file | sed "s/tokenized_markdown\/\([[:alpha:]]*\)v[[:digit:].]*.md/tracked_policies\/\1.md/"`
    if  [[ ! -f "$policyfile" ]]
    then
        touch $policyfile
        git add $policyfile
    fi
    git checkout -b $file
    cp $file $policyfile
    git add $policyfile
    git commit -m $policyfile
done