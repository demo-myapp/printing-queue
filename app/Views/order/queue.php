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
                        <h4 class="card-title"><?= $myorder['updated_at']; ?></h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text"><?= $myorder['title']; ?></p>
                        <div class="text-right">
                            <a href="/order/<?= $myorder['order_id']; ?>" class="btn btn-primary">Detail</a>
                            <form action="/allorder/download" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="document" class="form-control" value="<?= $myorder['document']; ?>">
                                <button type="submit" class="btn btn-success">Download File</button>
                            </form>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>