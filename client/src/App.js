import './App.css';
import React, {useEffect, useState } from "react";
import { Route, Switch } from 'react-router-dom';
import NavBar from './NavBar.js';
import About from "./About.js";
import Home from "./Home.js";
import WorkoutPage from "./WorkoutPage.js";

function App() {

  const [workoutCollection, setWorkoutCollection] = useState([]);

  useEffect(() => {
    fetch("/workouts")
    .then(res => res.json())
    .then(data => setWorkoutCollection(data))
  }, [])

  return (
    <div className="App">
      <NavBar />
      <Switch>
        <Route exact path ="/">
          <Home />
        </Route>
        <Route exact path ="/about">
          <About />
        </Route>
        <Route exact path ="/workoutpage">
          <WorkoutPage workoutCollection={workoutCollection}/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
