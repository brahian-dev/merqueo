<?php

namespace App\Http\Controllers\Inventary;

use App\Http\Controllers\Controller;
use App\Inventary;
use Illuminate\Http\Request;

class InventaryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
       $inventary = Inventary::getAll( $request->data );

       if ($inventary) {
           return response()->json(['data' => $inventary], 200);
       } else {
            return  response()->json(['exception' => 'The parameter data is Incorrectly'], 400);
       }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $body = $request->all();
        if (isset($body['inventory'])) {
            $content = $body['inventory'];

            foreach ($content as $item_content) {
                $inventory = new Inventary();
                $inventory->inventary_quantity = $item_content['quantity'];
                $inventory->date = $item_content['date'];
                $inventory->product_id = $item_content['id'];
                $inventory->save();
            }

            return response()->json(['response' => 'Inventory insert correctly'], 200);
        } else {
            return response()->json(['exception' => 'Content of request incorrectly formed'], 400);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
