<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Person>
 */
class PersonFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'first_name' => $this->faker->firstName,
            'second_name' => $this->faker->optional()->firstName,
            'surname' => $this->faker->lastName,
            'second_surname' => $this->faker->optional()->lastName,
            'usercreation' => $this->faker->randomNumber(),
            'usermodification' => $this->faker->randomNumber(),
        ];
    }
}
