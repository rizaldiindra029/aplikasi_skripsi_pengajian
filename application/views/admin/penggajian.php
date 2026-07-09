    <section class="content">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">

          <section class="col-lg-12 connectedSortable">

            <!-- Map card -->
            <div class="card">
              <div class="card-header"> <?=$title?> </h3>
              </div>
              <div class="card-body table-responsive">
                <table border="1" id="myTable" class="table table-bordered table-striped text-center">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>NIP</th>
                        <th>Nama</th>
                        <th>Hadir</th>
                        <th>Cuti</th>
                        <th>Izin</th>
                        <th>Sakit</th>
                        <th>Bpjs Kesehatan</th>
                        <th>Bpjs Ketenagakerjaan</th>
                        <th>Gaji</th>
                        <th>Departemen</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      
                      $no=1; foreach ($list as $data) { 
                        $tahun  = date('Y');
                        $bulan  = date('m');
                        $jumlah = 0;
                        $stotal = 0;
                        $absen  = $this->M_data->absenbulan($data->nip,$tahun,$bulan)->num_rows(); 
                        $cuti   = $this->M_data->cutibulan($data->nip,$tahun,$bulan)->num_rows(); 
                        $sakit  = $this->M_data->sakitbulan($data->nip,$tahun,$bulan)->num_rows(); 
                        $izin   = $this->M_data->izinbulan($data->nip,$tahun,$bulan)->num_rows();

                        $kesehatan   = (($absen * $data->gaji) + ($cuti * $data->gaji) - ($izin * $data->gaji))*1/100;
                        $kerja       = (($absen * $data->gaji) + ($cuti * $data->gaji) - ($izin * $data->gaji))*2/100;
                        $totalgaji   = (($absen * $data->gaji) - ($izin * $data->gaji)) - $kesehatan - $kerja;

                        $departemen = $this->db->get('departemen')->num_rows();
                        //var_dump($cuti);
                        //hitung hari cuti
                      ?>
                      <tr>
                        <td width="1%"><?=$no++?></td>
                        <td><?=ucfirst($data->nip)?></td>
                        <td><?=ucfirst($data->nama)?></td>
                        <td><?=$absen?></td>
                        <td><?=$cuti?></td>
                        <td><?=$izin?></td>
                        <td><?=$sakit?></td>
                        <td>Rp. <?=number_format($kesehatan)?></td>
                        <td>Rp. <?=number_format($kerja)?></td>
                        <td>Rp. <?=number_format($totalgaji)?></td>
                        <td><?=ucfirst($data->departemen)?></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>