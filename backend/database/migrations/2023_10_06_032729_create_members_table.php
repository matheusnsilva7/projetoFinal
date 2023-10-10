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
        Schema::create('members', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('personid');
            $table->unsignedBigInteger('iduser'); // Add this line
            $table->string('user');
            $table->string('clue');
            $table->boolean('enabled');
            $table->date('date');
            $table->unsignedBigInteger('idrol');
            $table->timestamp('creation_date')->useCurrent();
            $table->timestamp('modification_date')->useCurrent();
            $table->unsignedBigInteger('usercreation');
            $table->unsignedBigInteger('usermodification');
            $table->rememberToken();
            $table->timestamps();
    
            $table->foreign('personid')->references('id')->on('people')->onDelete('cascade');
            $table->foreign('iduser')->references('id')->on('users')->onDelete('cascade'); 
            $table->foreign('idrol')->references('id')->on('roles')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('members');
    }
};
