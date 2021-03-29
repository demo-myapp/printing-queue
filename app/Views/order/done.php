<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1><?= $title; ?></h1>
        </div>

        <?php if (session()->getFlashdata('message')) : ?>
            <div class="alert alert-success alert-dismissible show fade">
                <div class="alert-body">
                    <button class="close" data-dismiss="alert">
                        <span>&times;</span>
                    </button>
                    <?= session()->getFlashdata('message'); ?>
                </div>
            </div>
        <?php endif; ?>

        <div class="section-body">
            <?php foreach ($order as $myorder) : ?>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title"><?= $myorder['updated_at'] . '&ensp;' . '(Done)'; ?></h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text"><?= $myorder['title'] . '&ensp;|&ensp;' . $myorder['username']; ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>