<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Link>
 */
class LinkFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'pageid' => $this->faker->randomNumber(),
            'idrol' => $this->faker->randomNumber(),
            'description' => $this->faker->sentence,
            'user_creation' => $this->faker->randomNumber(),
            'user_modification' => $this->faker->randomNumber(),
        ];
    }
}
