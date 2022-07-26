import FoodType from './FoodType'

const Food = ({
  description,
  carbohydrate_g,
  fat_g,
  kcal,
  protein_g
} : FoodType) => {
  return (
    <li>
      <h2>{ description }</h2>
      <p>Carbs (g): { carbohydrate_g }</p>
      <p>Fat (g): { fat_g }</p>
      <p>Calories (kcal): { kcal }</p>
      <p>Protien (g): { protein_g }</p>
    </li>
  )
}

export default Food
