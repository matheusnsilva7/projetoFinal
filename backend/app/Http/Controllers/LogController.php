<?php

namespace App\Http\Controllers;

use App\Models\Log;
use Illuminate\Http\Request;

class LogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Log::with(['user'])->get();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $log = Log::create($data);

        return $log;
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $log = Log::findOrFail($id);
        return $log;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $log = Log::findOrFail($id);

        $data = $request->all();

        if ($request->password) {
            $data["password"] = bcrypt($request->password);
        }

        $log->update($data);

        return $log;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $log = Log::findOrFail($id);
        $log->delete();

        return response()->json([], 204);
    }
}
