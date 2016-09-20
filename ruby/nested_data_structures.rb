students = {
    teddy: {
        full_name: "Teddy Roosevelt",
        english: "A",
        math: "C",
        french: "A",
        science: {
            chemistry: 95,
            physics: 76
        },
        sport: "B",
        extra_curric: [
            "Debating Team",
            "Chess Club"
        ]
    },

    toby: {
        full_name: "Toby McGuire",
        english: "B",
        math: "B",
        french: "D",
        science: {
            chemistry: 70,
            physics: 59
        },
        sport: "D",
        extra_curric: [
            "Football Team"
        ]
    },

    dory: {
        full_name: "Doris Day",
        english: "N/A",
        math: "B",
        french: "D",
        science: {
            chemistry: 80,
            physics: 82
        },
        sport: "A",
        extra_curric: [
            "Tennis Team",
            "Glee Club"
        ]
    },
}

# Once you've built it, print a few individual pieces of deeply nested data from the structure,
#showing that you know how to use multiple indexes or hash keys (or both) to access nested items.
#Try to demonstrate a few different types of access.

p students[:dory][:extra_curric][0]
#=> "Tennis Team"
p students[:toby][:english]
#=> "B"
p students[:teddy][:science][:chemistry]
#=> 95

#Add dancing to extracurricular activities for Dory
students[:dory][:extra_curric].push("Dancing")
p students[:dory][:extra_curric]
#=>["Tennis Team", "Glee Club", "Dancing"]

#Reassign the value of english
students[:dory][:english] = "A"
p students[:dory][:english]
#=> "A"