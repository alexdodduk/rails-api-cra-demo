import { useState, useEffect } from 'react';
import './App.css';
import api from './Api'
import FoodType from './FoodType'
import Food from './Food';

function App() {
  const [foods, setFoods] = useState<FoodType[]>()

  useEffect(() => {
    api<FoodType[]>('/api/food?q=ice+cream')
      .then(foods => {
        setFoods(foods)
      })
      .catch((e) => console.error("Woops!", e))
  }, [])

  const foodList = foods ?
    (
      <ol>
        { foods.map(f => <Food key={f.ndb_no} {...f} />) }
      </ol>
    ) : "no foods found"

  return (
    <div className="App">
      { foodList }
    </div>
  );
}

export default App;
