@extends('pelanggans.layout')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Ubah Data Pelanggan</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('pelanggans.index') }}"> Kembali</a>
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

<form action="{{ route('pelanggans.update',$pelanggan->id) }}" method="POST">
    @csrf
    @method('PUT')

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Kode Pelanggan:</strong>
                <input type="text" name="kode_pelanggan" value="{{ $pelanggan->kode_pelanggan }}" class="form-control" readonly>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nama Pelanggan:</strong>
                <input type="text" name="nama_pelanggan" value="{{ $pelanggan->nama_pelanggan }}" class="form-control" placeholder="Masukkan Nama pelanggan">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Alamat:</strong>
                <textarea class="form-control" rows="4" name="alamat" placeholder="alamat">{{ $pelanggan->alamat }}</textarea>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nama Kota:</strong>
                <input type="text" name="nama_kota" value="{{ $pelanggan->nama_kota }}" class="form-control" placeholder="Masukkan Stok pelanggan">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>No Telepon:</strong>
                <input type="number" name="no_telepon" value="{{ $pelanggan->no_telepon }}" class="form-control" placeholder="Masukkan Harga pelanggan">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <button name="submit" type="submit" class="btn btn-primary">Simpan</button>
        </div>
    </div>

</form>
@endsection