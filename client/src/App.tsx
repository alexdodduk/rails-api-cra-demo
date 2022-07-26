import { useState, useEffect } from 'react';
import './App.css';
import api from './Api'
import FoodType from './FoodType'
import Food from './Food';

function App() {
  const [foods, setFoods] = useState<FoodType[]>([])
  const [search, setSearch] = useState("ice cream")

  useEffect(() => {
    if (search) {
      api<FoodType[]>(`/api/food?q=${search}`)
      .then(foods => {
        setFoods(foods)
      })
      .catch((e) => console.error("Woops!", e))
    }
  }, [search])

  const foodList = foods.length ?
    (
      <ol>
        { foods.map(f => <Food key={f.ndb_no} {...f} />) }
      </ol>
    ) : <p>no foods found</p>

  return (
    <div className="App">
      <input
        onChange={(e) => setSearch(e.target.value)}
        placeholder="Start typing an ingredient"
        value={search}
      />
      { foodList }
    </div>
  );
}

export default App;
