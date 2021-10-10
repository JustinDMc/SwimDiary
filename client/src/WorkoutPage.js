import React from 'react'

function WorkoutPage( {workoutCollection } ) {
    return (
        <div>
            <h1 style={{color: "black", textAlign: "center", marginTop: "2%"}}>Welcome to SwimDiary!</h1>
            {workoutCollection.map(workout => 
                <div style={{textAlign: "left", maxWidth: "30%", marginLeft: "35%", marginTop: "3%"}}>
                    <h1>Today's Workout</h1>
                    <div style={{border: "2px solid black", padding: "10px"}}>
                        <h3 style={{backgroundColor: "#dfdfd9"}}>Warmup: <br /> {workout.warmup}</h3>
                        <h3 style={{backgroundColor: "#dfdfd9"}}>Pre-Set: <br /> {workout.preset}</h3>
                        <h3 style={{backgroundColor: "#dfdfd9"}}>Main Set: <br /> {workout.mainset}</h3>
                        <h3 style={{backgroundColor: "#dfdfd9"}}>Warmdown: <br /> {workout.warmdown}</h3>
                    </div>
                </div>)}
        </div>
    )
}

export default WorkoutPage
