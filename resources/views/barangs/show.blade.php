@extends('barangs.layout')
@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2> Detail Barang</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('barangs.index') }}"> Back</a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Kode Barang:</strong>
            {{ $barang->kode_barang }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Nama Barang:</strong>
            {{ $barang->nama_barang }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Deskripsi:</strong>
            {{ $barang->deskripsi }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Stok Barang:</strong>
            {{ $barang->stok_barang }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Harga Barang:</strong>
            {{ $barang->harga_barang }}
        </div>
    </div>
</div>
@endsection