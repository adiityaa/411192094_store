@extends('pelanggans.layout')
@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2> Detail Pelanggan</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('pelanggans.index') }}">Kembali</a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Kode Pelanggan:</strong>
            {{ $pelanggan->kode_pelanggan }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Nama pelanggan:</strong>
            {{ $pelanggan->nama_pelanggan }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Alamat:</strong>
            {{ $pelanggan->alamat }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Nama Kota:</strong>
            {{ $pelanggan->nama_kota }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>No Telepon:</strong>
            {{ $pelanggan->no_telepon }}
        </div>
    </div>
</div>
@endsection