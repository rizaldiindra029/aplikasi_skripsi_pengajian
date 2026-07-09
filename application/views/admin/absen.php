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
                <table id="myTable" class="table table-bordered table-striped text-center">
                    <thead>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Waktu</th>
                      <th>Keterangan</th>
                      <th>Departemen</th>
                    </thead>
                    <tbody>
                      <?php $no=1; foreach ($data as $d) {
                        $departemen = $this->db->get('departemen')->num_rows();
                        ?>
                      <tr>
                        <td width="1%"><?=$no++?></td>
                        <td><?=ucfirst($d->nama)?></td>
                        <td><?=ucfirst($d->waktu)?></td>
                        <td>
                        <?=ucfirst($d->keterangan)?><br>
                        <?php { ?>
                          <small>Bukti  <a target="_blank" href="<?=base_url('bukti/'.$d->bukti_absen)?>" >Klik disini</a></small>
                        <?php } ?>
                        </td>
                        <td><?=ucfirst($d->departemen)?></td>
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