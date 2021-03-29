<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>My Profile</h1>
        </div>

        <div class="section-body">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4 text-center">
                        <img src="<?= base_url('/img/avatar/' . user()->user_image); ?>" class="img-fluid" alt="<?= user()->name; ?>">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <h4><?= user()->username; ?></h4>
                                </li>
                                <?php if (user()->name) : ?>
                                    <li class="list-group-item"><?= user()->name; ?></li>
                                <?php endif; ?>
                                <li class="list-group-item"><?= user()->email; ?></li>
                                <?php if (user()->whatsapp) : ?>
                                    <li class="list-group-item"><?= user()->whatsapp; ?></li>
                                <?php endif; ?>
                                <li class="list-group-item">
                                    <div class="badge badge-<?= (user()->role == 'admin') ?  'success' : 'warning'; ?>"><?= user()->role; ?></div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>