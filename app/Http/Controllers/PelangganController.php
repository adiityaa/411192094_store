<?php

namespace App\Http\Controllers;

use App\Pelanggan;
use Illuminate\Http\Request;

class PelangganController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pelanggans = Pelanggan::where('nama_kota', 'Jakarta')->where('nama_kota', 'jakarta')->paginate(10);

        return view('pelanggans.index', compact('pelanggans'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pelanggans.create');
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
            'kode_pelanggan' => 'required',
            'nama_pelanggan' => 'required|string',
            'alamat' => 'nullable',
            'nama_kota' => 'required|string',
            'no_telepon' => 'required|string',
        ]);

        Pelanggan::create($request->all());

        return redirect()->route('pelanggans.index')
            ->with('success', 'pelanggan berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function show(Pelanggan $pelanggan)
    {
        return view('pelanggans.show', compact('pelanggan'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function edit(Pelanggan $pelanggan)
    {
        return view('pelanggans.edit', compact('pelanggan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pelanggan $pelanggan)
    {
        $request->validate([
            'kode_pelanggan' => 'required',
            'nama_pelanggan' => 'required|string',
            'alamat' => 'nullable',
            'nama_kota' => 'required|string',
            'no_telepon' => 'required|string',
        ]);

        $pelanggan->update($request->all());

        return redirect()->route('pelanggans.index')
            ->with('Berhasil', 'Data pelanggan berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pelanggan $pelanggan)
    {
        $pelanggan->delete();

        return redirect()->route('pelanggans.index')
            ->with('Berhasi;', 'Data pelanggan berhasil dihapus');
    }
}
