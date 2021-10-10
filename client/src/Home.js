import React from 'react'

function Home( ) {

    return (
        <div className="home-div" style={{display: "grid", gridTemplateColumns: "repeat(4, 300px)", gridRowGap: "30px", justifyContent: "space-around"}}>

            <a href="/workoutpage">
                <div className="home-workout-card" style={{border: "2px solid black", marginTop: "60%", minHeight: "300px", borderRadius: "12px", backgroundColor: "#7e8df2"}}>
                    <h1 style={{textAlign: "center", marginTop: "37%"}}>Daily <br /> Workout</h1>
                </div>
            </a>

            <a href="/about">
                <div className="home-about-card" style={{border: "2px solid black", marginTop: "60%", minHeight: "300px", borderRadius: "12px", backgroundColor: "#7e8df2"}}>
                    <h1 style={{textAlign: "center", marginTop: "40%"}}>About Us</h1>
                </div>
            </a>

            <div className="flip-card" style={{ marginTop: "60%", borderRadius: "12px white"}}>
                <div className="flip-card-inner">
                    <div class="flip-card-front">
                        <img src="https://wallpaperaccess.com/full/2604791.jpg" alt="Avatar" style={{width: "300px", height: "300px", borderRadius: "12px"}} />
                    </div>
                    <div class="flip-card-back">
                        <h1>John Doe</h1>
                        <p>Architect & Engineer</p>
                        <p>We love that guy</p>
                    </div>
                </div>
            </div>

            <div className="home-signup-card" style={{border: "2px solid black", marginTop: "60%", borderRadius: "12px", backgroundColor: "#7e8df2"}}>
                <h1 style={{textAlign: "center", marginTop: "40%"}}>Sign Up</h1>
            </div>

        </div>
    )
}

export default Home
