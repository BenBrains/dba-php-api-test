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
        Schema::create('klant', function (Blueprint $table) {
            $table->id();
            $table->text('naam');
            $table->text('plaats');
            $table->text('email')->nullable();
            $table->text('opmerking')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('klant');
    }
};
