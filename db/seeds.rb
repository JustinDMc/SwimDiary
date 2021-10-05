puts "Destroying old data..."
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Workout.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('workouts')

puts "Generating users..."
user1 = User.create(username: "JDanielMc", email: "jdanielmcarthur@gmail.com", password_digest: "1234")
puts "Users generated successfully!"

puts "Generating workouts..."
workout1 = Workout.create(
    warmup: 
    "6x100's @1:30 // [odds: free, evens: 50free/25stroke/25free]", 
    # 9 minutes total
    preset: 
    "3 rounds:\n\-2x75's @1:10 // [25streamline kick on back/25bodyline flutter kick/25rotation flutter kick]
        -4x50's @:55 // [25 3/4 catchup breathe every stroke/25freestyle 1 breath]
        -6x25's @:30 // [1&2: 60% effort, 3&4: 80% effort, 5 max, 6 ez]".html_safe,
    # 36 minutes total
    mainset: 
    "3 rounds:
        -1x150 @1:45 // smooth/strong free
        -4x50's @:45 // best average free
        -1x100 @1:45 // ez choice",
    # 56 minutes total 
    warmdown: 
    "1x200 choice ez"
)
puts "Workouts generated successfully!"
