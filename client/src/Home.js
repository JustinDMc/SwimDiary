import React from 'react'

function Home( { workoutCollection }) {

    console.log(workoutCollection)


    return (
        <div>
            <h1 style={{color: "black"}}>We on the home page</h1>
            {workoutCollection.map(workout => 
                <div>
                    <h1>Today's Workout</h1>
                    <h3>{workout.warmup}</h3>
                    <h3>{workout.preset}</h3>
                    <h3>{workout.mainset}</h3>
                    <h3>{workout.warmdown}</h3>
                </div>)}
        </div>
    )
}

export default Home
