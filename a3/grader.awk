#grader.awk
#Soham Bhowmick
#SJSU ID: 018070663

#calculate average of 3 grades
function calculate_average(t1, t2, t3) {
    return (t1 + t2 + t3) / 3
}

BEGIN {
    FS = ",";
    print "Grade Report\n"
}

NR == 1 {
    next
}

{
    name = $2
    total = $3 + $4 + $5
    average = calculate_average($3, $4, $5)
    status = (average >= 70) ? "Pass" : "Fail" #pass or fail conditional

    scores[name] = total
    results[name] = name "|Total:" total "|Avg:" int(average) "|"status

    if (NR == 2 || total > max_score) {
        max_score = total
        top_student = name
    }
    if (NR == 2 || total < min_score) {
        min_score = total
        low_student = name
    }
}

END {
    for (n in results) {
        print results[n]
    }
#summary of results
    print "\nSummary"
    print "Top student: " top_student " with " max_score " points"
    print "Lowest student: " low_student " with " min_score " points"
}

