<?php ob_start(); ?>

<section id="content">
    <div class="camera-container">
        <div class="webcam-container">
            <h2>Webcam</h2>
            <div class="webcam">
                prendre une photo
            </div>
            <div class="upload">
                upload ta photo
            </div>
        </div>
        <div class="stickers">
            <h2>Stickers</h2>
        </div>
        <div class="other-photos">
            <h2>My photos</h2>
        </div>
    </div>
</section>

<?php
    $content = ob_get_clean();
    $title = $profile['login']." &#8226; Camagru";
    require('view/template.php');
?>