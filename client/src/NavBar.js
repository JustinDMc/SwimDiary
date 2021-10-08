import React from 'react';
import { Navbar } from "./styled";
import { NavLink } from "react-router-dom";

function NavBar() {
    return (
        <div>
            <Navbar style={{color: "white"}}>
                <h1 style={{marginRight: "55%"}}>SwimDiary</h1>
                <NavLink exact to="/about">About</NavLink>
                <NavLink exact to="/">Home</NavLink>
                <NavLink exact to="/workoutpage">Workouts</NavLink>
            </Navbar>
        </div>
    )
}

export default NavBar
