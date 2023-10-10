<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class LogFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'binnacle' => $this->faker->sentence,
            'iduser' => $this->faker->numberBetween(1, 10), 
            'date' => $this->faker->date,
            'hour' => $this->faker->time,
            'ip' => $this->faker->ipv4,
            'SW' => $this->faker->word,
            'browser' => $this->faker->userAgent,
            'user' => $this->faker->userName,
        ];
    }
}
