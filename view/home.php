<div class="row mb ">
    <div class="banner">
        <!-- Slideshow container -->
        <div class="slideshow-container">

            <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="img/Property 1=Default.png" style="width:100%">
                <div class="text"></div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="img/Property 1=Variant2.png" style="width:100%">
                <div class="text"></div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="img/Property 1=Variant3.png" style="width:100%">
                <div class="text"></div>
            </div>

            <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

        <!-- The dots/circles -->
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>

    </div>
    <div class="boxtrai">
        <div class="row">
            <?php
            $i = 0;
            foreach ($spnew as $sp) {
                extract($sp);
                $linksp = "index.php?act=sanphamct&idsp=" . $id;
                $hinh = $img_path . $image;
                if (($i == 2) || ($i == 5) || ($i == 8) || ($i == 11)) {
                    $mr = "mr";
                } else {
                    $mr = "";
                }
                echo '<div class="boxsp ' . $mr . '">
                        <a href="' . $linksp . '"><img src="' . $hinh . '" alt="" width="180px" height="200px">
                        <p>$' . $price . '</p>
                        <a href="' . $linksp . '">' . $name . '</a>
                        <div class="row btnaddtocart">
                        <form action="index.php?act=addtocart" method="post">
                            <input type="hidden" name="id" value="' . $id . '">
                            <input type="hidden" name="name" value="' . $name . '">
                            <input type="hidden" name="img" value="' . $hinh . '">
                            <input type="hidden" class="price" name="price" value="' . $price . '">
                            <input type="submit" name="addtocart" value="Thêm vào giỏ hàng">
                        </form>
                        </div>
                        </div>';
                $i += 1;
            }
            ?>
        </div>
    </div>
    <div class="boxphai">
        <div class="row">
            <div class="boxtitle">TOP RANKING</div>
            <div class=" row boxcontent">
                <?php
                foreach ($dstop10 as $sp) {
                    extract($sp);
                    $linksp = "index.php?act=sanphamct&idsp=" . $id;
                    $img = $img_path . $image;
                    echo ' <div class="row mb10 top10">
                        <a href="' . $linksp . '"><img src="' . $img . '" alt=""></a>
                        <a href="' . $linksp . '">' . $name . '</a>
                    </div>';
                }

                ?>
                <!-- <div class="row mb10 top10">
                    <img src="view/image/image3.jpg" alt="">
                    <a href="#">Macbook pro</a>
                </div>
                <div class="row mb10 top10">
                    <img src="view/image/image1.jpg" alt="">
                    <a href="#">smart watch</a>
                </div>
                <div class="row mb10 top10">
                    <img src="view/image/image5.jpg" alt="">
                    <a href="#">Balo laptop</a>
                </div>
                <div class="row mb10 top10">
                    <img src="view/image/image4.jpg" alt="">
                    <a href="#">airpod pro</a>
                </div> -->
            </div>
        </div>
    </div>
    <div class="row mb">
        <div>
            <h1 class="h1title">Tin tức</h1>

        </div>
        <div class="tintuc">
            <div class="tintuc1 mr">
                <div class="">
                    <img src="img/Rectangle 40.png" alt="">
                    <p>Mùa hè có nhiệt độ cao, nắng nóng gay gắt, do đó việc chọn nước hoa cho mùa hè cũng cần có sự
                        khác biệt so với mùa đông. Nước hoa mùa hè không cần quá nồng nàn như mùa đông nhưng vẫn cần có
                        hương thơm đặc biệt để chủ nhân ghi điểm. </p>
                </div>
            </div>
            <div class="tintuc1">
                <div class="">
                    <img src="img/Rectangle 41.png" alt="">
                    <p>Hãy xịt nước hoa lên cổ tay vị trí có mạch đập bởi đây là những vùng da mỏng nhất và ấm nhất,
                        giúp lưu giữ mùi nước hoa lâu hơn. Những vị trí khác nước hoa sẽ giữ được lâu hơn là sau tai,
                        cổ, khuỷu tay và phía sau đầu gối của bạn.</p>
                </div>
            </div>
            <div class="tintuc1">
                <div class="">
                    <img src="img/Rectangle 42.png" alt="">
                    <p>Bên cạnh đồ makeup, trang phục thì nước hoa cũng là item vô cùng quan trọng với các chị em công
                        sở. Hương nước hoa tinh tế sẽ giúp bạn có được diện mạo thu hút, sang trọng hơn rất nhiều. Trong
                        năm 2023 tới đây, xu hướng nước hoa cũng có sự thay đổi.</p>
                </div>
            </div>
        </div>
        <div>
            <div>
                <h1 class="h1title">SẢN PHẨM GỢI Ý</h1>
            </div>
            <div class="row boxcontent1">
                <div class="boxspgy">
                    <img src="img/5.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy">
                    <img src="img/6.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy">
                    <img src="img/7.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy ">
                    <img src="img/7.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy">
                    <img src="img/8.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy">
                    <img src="img/9.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy">
                    <img src="img/10.png" alt="" width="200px" height="250px">
                </div>
                <div class="boxspgy">
                    <img src="img/10.png" alt="" width="200px" height="250px">
                </div>
            </div>
        </div>

        <div>
            <div class="boxsp mr">
                <img src="img/12.png" alt="" width="300px" height="360px">
            </div>
            <div class="boxsp mr">
                <img src="img/13.png" alt="" width="300px" height="360px">
            </div>
            <div class="boxsp">
                <img src="img/14.png" alt="" width="300px" height="360px">
            </div>
        </div>
    </div>
</div>
<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>