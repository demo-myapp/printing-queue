<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1><?= $title; ?></h1>

        </div>

        <div class="section-body">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title"><?= $order['title']; ?></h5>
                    <h6 class="card-subtitle mb-2 text-muted"><?= $order['username']; ?></h6>
                    <p class="card-text"><?= $order['format']; ?></p>
                    <p class="card-text"><?= $order['document']; ?></p>
                    <p class="card-text"><?= $order['status']; ?></p>
                </div>
            </div>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>