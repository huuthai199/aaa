<div class="row mb ">
    <div class="boxtrai mr">
        <div class="row mb">
            <div class="boxtitle">SẢN PHẨM CHI TIẾT</div>
            <?php
            extract($onesp);
            ?>
            <div class="row boxcontent">
            <div class="spct">
                <?php
                $hinh = $img_path . $image;
                echo "<img src='" . $hinh . "' width='350px' height='350px'><br>";
                echo "<div>'".$description."'</div>";
                ?>
                </div>
            <div class="cart">
            <div class="btnaddto">
                    <form action="index.php?act=addto" method="post">
                        <input type="submit" name="addto" value="Thêm vào giỏ hàng" class="gh">
                    </form>
                </div> 
                <div class="btnaddto">
                    <form action="index.php?act=addto" method="post">
                        <input type="submit" name="addto" value="Mua hàng" class="gh">
                    </form>
                </div> 
            </div>
               
            </div>

        
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
                    $("#binhluan").load("view/binhluan/binhluanform.php", {idpro: <?=$id?>});
                });
        </script>
        <div class="row " id="binhluan">
            
        </div>
        <div class="row mb">
            <div class="boxtitle">SẢN PHẨM CÙNG LOẠI</div>
            <div class=" row boxcontent">
                <div class="spcl">
                <?php
                foreach ($sp_cung_loai as $sp_cung_loai) {
                    extract($sp_cung_loai);
                    $linksp = "index.php?act=sanphamct&idsp=" . $id;
                    echo '<li><a href="' . $linksp . '">' . $name . '</a></li>';
                }
                ?>
                </div>
              
            </div>
        </div>
    </div>
</div>