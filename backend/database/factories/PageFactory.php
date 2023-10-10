<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Page>
 */
class PageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'url' => $this->faker->url,
            'state' => $this->faker->word,
            'name' => $this->faker->word,
            'description' => $this->faker->sentence,
            'icon' => $this->faker->word,
            'guy' => $this->faker->word,
            'usercreation' => $this->faker->randomNumber(),
            'usermodification' => $this->faker->randomNumber(),
        ];
    }
}
