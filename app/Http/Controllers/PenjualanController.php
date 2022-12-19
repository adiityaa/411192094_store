<?php

namespace App\Http\Controllers;

use App\Barang;
use App\Pelanggan;
use App\Penjualan;
use Illuminate\Http\Request;

class PenjualanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $penjualans = Penjualan::where('jumlah_barang', '>', '10')->where('harga_barang', '>', '10000')->paginate(10);

        return view('penjualans.index', compact('penjualans'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pelanggans = Pelanggan::all();
        $barangs = Barang::all();
        return view('penjualans.create', compact('pelanggans', 'barangs'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'no_penjualan' => 'required',
            'tanggal' => 'required',
            'kode_pelanggan' => 'required',
            'kode_barang' => 'required',
            'jumlah_barang' => 'required',
            'harga_barang' => 'nullable',
        ]);

        Penjualan::create($request->all());

        return redirect()->route('penjualans.index')
            ->with('success', 'penjualan berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function show(Penjualan $penjualan)
    {
        return view('penjualans.show', compact('penjualan'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function edit(Penjualan $penjualan)
    {
        $pelanggans = Pelanggan::all();
        $barangs = Barang::all();
        return view('penjualans.edit', compact('penjualan', 'pelanggans', 'barangs'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Penjualan $penjualan)
    {
        $request->validate([
            'no_penjualan' => 'required',
            'tanggal' => 'required',
            'kode_pelanggan' => 'required',
            'kode_barang' => 'required',
            'jumlah_barang' => 'required',
            'harga_barang' => 'nullable',
        ]);

        $penjualan->update($request->all());

        return redirect()->route('penjualans.index')
            ->with('Berhasil', 'Data penjualan berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Penjualan $penjualan)
    {
        $penjualan->delete();

        return redirect()->route('penjualans.index')
            ->with('Berhasi;', 'Data penjualan berhasil dihapus');
    }
}
