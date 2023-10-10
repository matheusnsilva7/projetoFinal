<?php

namespace App\Http\Controllers;

use App\Models\Link;
use Illuminate\Http\Request;

class LinkController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Link::with(['page', 'role'])->get();
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

        $link = Link::create($data);

        return $link;
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $link = Link::findOrFail($id);
        return $link;
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
        $link = Link::findOrFail($id);

        $data = $request->all();

        if ($request->password) {
            $data["password"] = bcrypt($request->password);
        }

        $link->update($data);

        return $link;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $link = Link::findOrFail($id);
        $link->delete();

        return response()->json([], 204);
    }
}
