   <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
   <!--sidebar start-->
   <?php 
  $id = $_SESSION['admin']['id_member'];
  $hasil_profil = $lihat -> member_edit($id);
?>
   <aside>
       <div id="sidebar" style="background-color:#F0F8FF; color:#FFFFFF" class="nav-collapse ">
           <!-- sidebar menu start-->
           <ul class="sidebar-menu" id="nav-accordion">

               <p class="centered"><a><img src="assets/img/user/<?php echo $hasil_profil['gambar'];?>"
                           class="img-circle" width="100"></a></p>
               <h5 style="color:#000000" class="centered"><?php echo $hasil_profil['nm_member'];?></h5>
               <h5 style="color:#000000" class="centered">( <?php echo $hasil_profil['NIK'];?> )</h5>

               <li class="mt">
                   <a href="index.php">
                       <i class="fa fa-dashboard"></i>
                       <span>Dashboard</span>
                   </a>
               </li>

               <li class="sub-menu">
                   <a href="javascript:;">
                       <i class="fa fa-desktop"></i>
                       <span>Data Master<span style="padding-left:2px;"> <i class="fa fa-angle-down"></i></span></span>
                   </a>
                   <ul class="sub">
                       <li><a href="index.php?page=barang">Barang</a></li>
                       <li><a href="index.php?page=kategori">Kategori</a></li>
                       <li><a href="index.php?page=user">Petugas</a></li>
                   </ul>

               </li>

               <li class="sub-menu">
                   <a href="javascript:;">
                       <i class="fa fa-desktop"></i>
                       <span>Transaksi <span style="padding-left:2px;"> <i class="fa fa-angle-down"></i></span></span>
                   </a>
                   <ul class="sub">
                       <li><a href="index.php?page=jual">Penjualan</a></li>
                   </ul>
               </li>

               <li class="sub-menu">
                   <a href="javascript:;">
                       <i class="fa fa-desktop"></i>
                       <span>Laporan<span style="padding-left:2px;"> <i class="fa fa-angle-down"></i></span></span>
                   </a>
                   <ul class="sub">
                       <li><a href="index.php?page=laporan">Laporan Penjualan</a></li>
                   </ul>
               </li>

               <li class="sub-menu">
                   <a href="javascript:;">
                       <i class="fa fa-cog"></i>
                       <span>Setting <span style="padding-left:2px;"> <i class="fa fa-angle-down"></i></span></span>
                   </a>
                   <ul class="sub">
                       <li><a href="index.php?page=pengaturan">Pengaturan Toko</a></li>
                   </ul>

                   <ul class="sub">
                       <li><a href="index.php?page=tentang">Tentang Kami</a></li>
                   </ul>
               </li>
           </ul>
           <!-- sidebar menu end-->
       </div>
   </aside>
   <!--sidebar end-->