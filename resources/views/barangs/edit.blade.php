@extends('barangs.layout')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Ubah Data Barang</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('barangs.index') }}"> Kembali</a>
        </div>
    </div>
</div>

@if ($errors->any())
<div class="alert alert-danger">
    <strong>Whoops!</strong> Ada kesalahan pada masukkan form<br><br>
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<form action="{{ route('barangs.update',$barang->id) }}" method="POST">
    @csrf
    @method('PUT')

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Kode Barang:</strong>
                <input type="text" name="kode_barang" value="{{ $barang->kode_barang }}" class="form-control">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nama Barang:</strong>
                <input type="text" name="nama_barang" value="{{ $barang->nama_barang }}" class="form-control" placeholder="Masukkan Nama Barang">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Deskripsi:</strong>
                <textarea class="form-control" rows="4" name="deskripsi" placeholder="deskripsi">{{ $barang->deskripsi }}</textarea>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Stok Barang:</strong>
                <input type="number" name="stok_barang" value="{{ $barang->stok_barang }}" class="form-control" placeholder="Masukkan Stok Barang">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Harga Barang:</strong>
                <input type="number" name="harga_barang" value="{{ $barang->harga_barang }}" class="form-control" placeholder="Masukkan Harga Barang">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <button name="submit" type="submit" class="btn btn-primary">Simpan</button>
        </div>
    </div>

</form>
@endsection