<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use App\Inventary;
use App\Order;
use App\order_product;
use Illuminate\Http\Request;

class OrderController extends Controller
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
        try {
            if (isset($body['orders'])) {
                $content = $body['orders'];

                foreach ($content as $item_content) {
                    $order = new Order();
                    $order->order_priority = $item_content['priority'];
                    $order->order_address = $item_content['address'];
                    $order->order_deliverable = $item_content['deliveryDate'];
                    $order->user_name = $item_content['user'];
                    $order->save();

                    if (isset($item_content['products']) && count($item_content['products']) > 0) {
                        $products = $item_content['products'];
                        foreach ($products as $item_products) {
                            $order_product = new order_product();
                            $order_product->order_id = $order->order_id;
                            $order_product->product_id = $item_products['id'];
                            $order_product->quantity = $item_products['quantity'];
                            $order_product->transporter_name = 'Nombre Transportador';
                            $order_product->save();

                            $inventory = Inventary::where('product_id', '=', $item_products['id'])->first();
                            if ($inventory instanceof Inventary) {
                                $total_quantity = $inventory->inventary_quantity - $item_products['quantity'];
                                $total_quantity <= 0 ? $total_quantity = 0 : null;

                                if ($inventory instanceof Inventary) {
                                    Inventary::where('product_id', '=', $item_products['id'])
                                        ->update(['inventary_quantity' => $total_quantity]);
                                }
                            }
                        }
                    }
                }

                return response()->json(['response' => 'Order insert correctly'], 200);
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

    public function Enlisted() {
        $productsEnlisted = Order::productsEnlisted();

        if (count($productsEnlisted) > 0) {
            return response()->json(['product_enlisted', $productsEnlisted], 200);
        } else {
            return response()->json(['exception', 'Unexpected error'], 200);
        }
    }
}
