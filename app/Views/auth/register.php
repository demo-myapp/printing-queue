<?= $this->extend('auth/templates/index'); ?>

<?= $this->section('content'); ?>
<div id="app">
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
                    <!-- <div class="login-brand">
                        <img src="<?= base_url(); ?>/img/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
                    </div> -->

                    <div class="card card-primary">
                        <div class="card-header">
                            <?= lang('Auth.register') ?>
                        </div>

                        <div class="card-body">
                            <?= view('Myth\Auth\Views\_message_block') ?>
                            <form action="<?= route_to('register') ?>" method="post">
                                <?= csrf_field() ?>
                                <div class="row">
                                    <div class="form-group col-6">
                                        <label for="name">Name</label>
                                        <input id="name" type="text" class="form-control" name="name" value="<?= old('name') ?>" autofocus>
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="username"><?= lang('Auth.username') ?></label>
                                        <input id="username" type="text" class="form-control <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-6">
                                        <label for="email"><?= lang('Auth.email') ?></label>
                                        <input id="email" type="email" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" name="email" aria-describedby="emailHelp" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>">
                                        <small id="emailHelp" class="form-text text-muted"><?= lang('Auth.weNeverShare') ?></small>
                                    </div>
                                    <!-- <div class="form-group col-6">
                                        <label for="whatsapp">No. Whatsapp</label>
                                        <input id="whatsapp" type="text" class="form-control" name="whatsapp" value="<?= old('whatsapp') ?>">
                                    </div> -->
                                </div>

                                <div class="row">
                                    <div class="form-group col-6">
                                        <label for="password"><?= lang('Auth.password') ?></label>
                                        <input id="password" type="password" name="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>" autocomplete="off">
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="pass_confirm"><?= lang('Auth.repeatPassword') ?></label>
                                        <input id="pass_confirm" type="password" name="pass_confirm" class="form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.repeatPassword') ?>" autocomplete="off">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                                        <?= lang('Auth.register') ?>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="mt-5 text-muted text-center">
                        <?= lang('Auth.alreadyRegistered') ?> <a href="<?= route_to('login') ?>"><?= lang('Auth.signIn') ?></a>
                    </div>
                    <div class="simple-footer">
                        Copyright &copy; Rizqi <?= date('Y'); ?> Theme by Stisla
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>