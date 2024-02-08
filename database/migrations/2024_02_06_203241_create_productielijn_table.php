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
        Schema::create('productielijn', function (Blueprint $table) {
            $table->id();
            $table->text('naam');
            $table->foreignId('fabriek_id')->constrained('fabriek');
            $table->boolean('beschikbaar');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('productielijn');
    }
};
