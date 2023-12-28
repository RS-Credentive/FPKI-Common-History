for file in tokenized_markdown/*.md; do
    policyname=`echo $file | sed "s/tokenized_markdown\/\([[:alpha:]]*\)v[[:digit:].]*.md/\1/"`
    echo cp $file tracked_policies/$policyname.md
done