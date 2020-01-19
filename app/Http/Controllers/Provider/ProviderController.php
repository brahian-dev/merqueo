<?php

namespace App\Http\Controllers\Provider;

use App\Http\Controllers\Controller;
use App\Product;
use App\Provider;
use App\providers_product;
use Illuminate\Http\Request;

class ProviderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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

        if (isset($body['providers'])) {
            $content = $body['providers'];

            foreach ($content as $item_content) {
                $provider = new Provider();
                $provider->provider_name = $item_content['name'];
                $provider->save();

                if (isset($item_content['products']) && count($item_content['products']) > 0) {
                    $product = $item_content['products'];

                    foreach ($product as $item_products) {
                        $products = Product::find($item_products['productId']);

                        if ($products instanceof Product) {
                            $provider_product = new providers_product();
                            $provider_product->provider_id = $provider->provider_id;
                            $provider_product->product_id = $item_products['productId'];
                            $provider_product->save();
                        }
                    }
                }
            }

            return response()->json(['response' => 'Providers insert correctly'], 200);
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
