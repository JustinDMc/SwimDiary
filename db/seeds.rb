puts "Destroying old data..."
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Type.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('types')
Workout.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('workouts')
WorkoutType.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('workout_types')

puts "Generating users..."
user1 = User.create(username: "JDanielMc", email: "jdanielmcarthur@gmail.com", password_digest: "1234")
puts "Users generated successfully!"

puts "Generating types..."
type1 = Type.create(practice: "kick")
type2 = Type.create(practice: "mid free/pull")
type3 = Type.create(practice: "stroke")
type4 = Type.create(practice: "active recovery")
type5 = Type.create(practice: "uw/speed work")
type6 = Type.create(practice: "race prep")
puts "Types generated successfully!"

puts "Generating workouts..."
workout1 = Workout.create(
    warmup:
    "2x(4x75's @1:05/1:10/1:15/1:20, #1 swim, #2 50sw/25ki, #3 25sw/50ki, #4 75ki)",
    # 9:40minutes total
    preset: 
    "6 rounds:
        - 1x125 @2:10 // flutter kick on back, consistent uw kick count
        - 1x75 @1:10 // fast flutter kick on back, uw kick count +2
        - 1x50 @1:00 // ez choice",
    # 35:40minutes total
    mainset: 
    "12x100's @1:40 // 2 fast kick, 1 ez(x4)",
    # 55:40minutes total
    warmdown: 
    "1x200 ez"
)

workout2 = Workout.create(
    warmup: 
    '6x100`s @1:30 // [odds: free, evens: 50free/25stroke/25free]', 
    # 9 minutes total
    preset: 
    "3 rounds:
        -2x75's @1:10 // [25streamline kick on back/25bodyline flutter kick/25rotation flutter kick]
        -4x50's @:55 // [25 3/4 catchup breathe every stroke/25freestyle 1 breath]
        -6x25's @:30 // [1&2: 60% effort, 3&4: 80% effort, 5 max, 6 ez]",
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

puts "Generating workout types..."
workout_type1 = WorkoutType.create(workout_id: workout1.id, type_id: type1.id)
workout_type2 = WorkoutType.create(workout_id: workout2.id, type_id: type2.id)
puts "Workout types generated successfully!"
