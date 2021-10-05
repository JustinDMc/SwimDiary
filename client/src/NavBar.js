import React from 'react';
import { Navbar } from "./styled";
import { NavLink } from "react-router-dom";

function NavBar() {
    return (
        <div>
            <Navbar style={{color: "white"}}>
                <h1>SwimDiary</h1>
                <NavLink exact to="/about">About</NavLink>
                <NavLink exact to="/">Home</NavLink>
            </Navbar>
        </div>
    )
}

export default NavBar
