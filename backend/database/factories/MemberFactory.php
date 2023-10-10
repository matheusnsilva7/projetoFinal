<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Member>
 */
class MemberFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'personid' => function () {
                return \Database\Factories\PersonFactory::new()->create()->id;
            },
            'iduser' => function () {
                return \Database\Factories\UserFactory::new()->create()->id;
            },
            'user' => $this->faker->userName,
            'clue' => $this->faker->word,
            'enabled' => $this->faker->boolean,
            'date' => $this->faker->date,
            'idrol' => function () {
                return \Database\Factories\RoleFactory::new()->create()->id;
            },
            'creation_date' => now(),
            'modification_date' => now(),
            'usercreation' => 1, // Replace with user ID or logic to fetch user ID
            'usermodification' => 1, // Replace with user ID or logic to fetch user ID
            'remember_token' => Str::random(10),
        ];
    }
}
