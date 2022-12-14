<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use File;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::join('services', 'services.id', 'products.service_id')
            ->select('services.service_name', 'products.*')
            ->get();
        if ($products) {
            return response()->json($products, Response::HTTP_OK);
        } else {
            return response()->json([]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $req
     * @return \Illuminate\Http\Response
     */
    public function store(Request $req)
    {
        $this->validate($req,[
            'img' =>'required',
            'product_name'=>'required',
            'description'=>'required',
            'price'=>'required',
            'version_id'=>'required',
            'service_id'=>'required',
        ],[
            'img.required' => 'Bạn chưa chọn hình ảnh',
            'product_name.required' =>'Bạn chưa nhập tên điện thoại',
            'description.required' =>'Bạn chưa nhập mô tả',
            'price.required' =>'Bạn chưa nhập giá',
            'version_id.required' =>'Bạn chưa nhập phiên bản',
            'service_id.required' =>'Bạn chưa nhập dịch vụ',
        ]);

        $product=new Product();
        $product->product_name=$req->product_name;
        $product->description=$req->description;
        $product->price=$req->price;
        $product->version_id=$req->version_id;
        $product->service_id=$req->service_id;
        $product->img=$req->img;
        $product->save();
        return Response::HTTP_OK;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $products = Product::find($id);
        return response()->json($products,Response::HTTP_OK);
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
    public function update(Request $req, $id)
    {
        $this->validate($req,[
            'img' =>'mimes:jpg,png,jpeg',
            'product_name'=>'required',
            'description'=>'required',
            'price'=>'required',
        ],[
            'img.mimes'=>'Chỉ chấp nhận files ảnh',
            'product_name.required' =>'Bạn chưa nhập tên điện thoại',
            'description.required' =>'Bạn chưa nhập mô tả',
            'price.required' =>'Bạn chưa nhập giá',
        ]);
        $product= Product::find($id);
        $product->product_name=$req->product_name;
        $product->description=$req->description;
        $product->price=$req->price;
        $product->version_id=$req->version_id;
        $product->service_id=$req->service_id;
        $product->img=$name;
        $product->save();

        return Response::HTTP_OK;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $products = Product::find($id);
        $products->delete();
        return Response::HTTP_OK;
    }
    public function getAllProductByBrand($id) {
        $products = DB::table("products as p")
                    ->join("versions as v", "v.id", "p.version_id")
                    ->where("v.brand_id", $id)
                    ->get();
        return $products;
    }
}
