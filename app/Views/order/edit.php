<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1><?= $title; ?></h1>

        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Simple Summernote</h4>
                        </div>
                        <div class="card-body">
                            <form action="/order/update/<?= $order['order_id']; ?>" method="post" enctype="multipart/form-data">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="username" class="form-control" value="<?= user()->username; ?>">
                                <input type="hidden" name="fileLama" class="form-control" value="<?= $order['document']; ?>">
                                <div class="form-group row mb-4">
                                    <label for="title" class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="title" class="form-control <?= ($validation->hasError('title')) ? 'is-invalid' : ''; ?>" value="<?= (old('title')) ? old('title') : $order['title'] ?>" autofocus>
                                        <div class="invalid-feedback">
                                            <?= $validation->getError('title'); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label for="format" class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Format File</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select name="format" class="form-control selectric">
                                            <option value="PDF" <?= $order['format'] == 'PDF' ? 'selected' : ''; ?>>PDF</option>
                                            <option value="WORD" <?= $order['format'] == 'WORD' ? 'selected' : ''; ?>>WORD</option>
                                            <option value="EXCEL" <?= $order['format'] == 'EXCEL' ? 'selected' : ''; ?>>EXCEL</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label for="document" class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Upload Document</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="file" id="document" name="document" class="custom-file-input <?= ($validation->hasError('document')) ? 'is-invalid' : ''; ?>" onchange="previewDoc()">
                                        <label for="document" class="custom-file-label"><?= $order['document']; ?></label>
                                        <div class="invalid-feedback">
                                            <?= $validation->getError('document'); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label for="note" class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Note</label>
                                    <div class="col-sm-12 col-md-7">
                                        <textarea name="note" class="summernote-simple"><?= (old('note')) ? old('note') : $order['note'] ?></textarea>
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                        <a href="<?= base_url('user'); ?>" class="btn btn-danger mr-2">Cancel</a>
                                        <button type="submit" class="btn btn-primary">Edit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>