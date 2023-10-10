<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('people', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('second_name')->nullable();
            $table->string('surname');
            $table->string('second_surname')->nullable();
            $table->timestamp('creation_date')->useCurrent();
            $table->timestamp('modification_date')->useCurrent();
            $table->unsignedBigInteger('usercreation');
            $table->unsignedBigInteger('usermodification');

            $table->timestamps();

            // $table->foreign('usercreation')->references('id')->on('users')->onDelete('cascade');
            // $table->foreign('usermodification')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('people');
    }
};
