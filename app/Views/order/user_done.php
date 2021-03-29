<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1><?= $title; ?></h1>
        </div>

        <div class="section-body">
            <?php foreach ($order as $myorder) : ?>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title"><?= $myorder['updated_at'] . '&ensp;' . '(Done)'; ?></h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text"><?= $myorder['title']; ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>