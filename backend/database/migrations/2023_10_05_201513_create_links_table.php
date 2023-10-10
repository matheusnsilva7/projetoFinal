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
        Schema::create('links', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pageid');
            $table->unsignedBigInteger('idrol');
            $table->string('description');
            $table->timestamp('creation_date')->useCurrent();
            $table->timestamp('modification_date')->useCurrent();
            $table->unsignedBigInteger('user_creation');
            $table->unsignedBigInteger('user_modification');

            $table->timestamps(); 


            //$table->foreign('pageid')->references('id')->on('pages')->onDelete('cascade');
            //$table->foreign('idrol')->references('id')->on('roles')->onDelete('cascade');
            // $table->foreign('user_creation')->references('id')->on('users')->onDelete('cascade');
            // $table->foreign('user_modification')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('links');
    }
};
