<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Inventary;
use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
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
        $body =  $request->all();
        try {
            if (isset($body['products'])) {
                $content = $body['products'];
                foreach ($content as $item_content) {
                    $products = Product::find($item_content['id']);
                    if (!$products instanceof Product) {
                        $product = new Product();
                        $product->product_id = $item_content['id'];
                        $product->product_name = $item_content['name'];
                        $product->save();
                    }
                }

                return response()->json(['response' => 'Products insert correctly'], 200);
            } else {
                return response()->json(['exception' => 'Content of request incorrectly formed'], 400);
            }
        } catch (\Exception $e) {
            abort(404);
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
        $product = Product::getProductsOrder($id);
        $object = new \stdClass();
        $object->product = [];
        foreach ($product as $item) {
            $object_product = new \stdClass();
            $inventory = Inventary::where('product_id', '=', $item->product_id)->first();
            if ($inventory instanceof Inventary) {
                $object_product->order_id = $item->order_id;
                $object_product->product_id = $item->product_id;
                $object_product->product_name = $item->product_name;
                if ($item->quantity > $inventory->inventary_quantity) {
                    $object_product->quantity = $inventory->inventary_quantity;
                    $object_product->product_supply = true;
                } else if ($item->quantity < $inventory->inventary_quantity) {
                    $total = $inventory->inventary_quantity - $item->quantity;
                    $object_product->quantity = $total;
                    $object_product->product_supply = false;
                }
            }

            $object->product[] = $object_product;
        }

        return response()->json(['Data' => $object], 200);
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

    public function productWorst() {
        $worstProduct = Product::productWorst();

        if (count($worstProduct) > 0) {
            return response()->json(['products' => $worstProduct], 200);
        } else {
            return response()->json(['exception', 'Unexpected error'], 400);
        }
    }

    public function productBest() {
        $bestProduct = Product::productBest();

        if (count($bestProduct) > 0) {
            return response()->json(['products' => $bestProduct], 200);
        } else {
            return response()->json(['exception', 'Unexpected error'], 400);
        }
    }
}
