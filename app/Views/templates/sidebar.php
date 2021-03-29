<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <i class="fas fa-print"></i>
            <a href="index.html">Printing</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <i class="fas fa-print"></i>
        </div>
        <?php if (in_groups('admin')) : ?>
            <ul class="sidebar-menu">
                <li class="menu-header">User Management</li>
                <li><a class="nav-link" href="<?= base_url('admin'); ?>"><i class="far fa-square"></i> <span>User List</span></a></li>
                <li><a class="nav-link" href="<?= base_url('order/inqueue'); ?>"><i class="far fa-square"></i> <span>Order Queue</span></a></li>
                <li><a class="nav-link" href="<?= base_url('order/done'); ?>"><i class="far fa-square"></i> <span>Order Finish</span></a></li>
            </ul>
        <?php endif; ?>
        <ul class="sidebar-menu">
            <li class="menu-header">Profile</li>
            <li><a class="nav-link" href="<?= base_url('user'); ?>"><i class="far fa-square"></i> <span>My Profile</span></a></li>
            <?php if (in_groups('user')) : ?>
                <li><a class="nav-link" href="<?= base_url('order/create'); ?>"><i class="far fa-square"></i> <span>Order Now</span></a></li>
                <li><a class="nav-link" href="<?= base_url('order'); ?>"><i class="far fa-square"></i> <span>My Order</span></a></li>
                <li><a class="nav-link" href="<?= base_url('order/user_done'); ?>"><i class="far fa-square"></i> <span>Order Done</span></a></li>
            <?php endif; ?>
            <li><a class="nav-link" href="credits.html"><i class="fas fa-pencil-ruler"></i> <span>Edit Profile</span></a></li>
        </ul>

        <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
            <a href="<?= base_url('logout'); ?>" class="btn btn-primary btn-lg btn-block btn-icon-split">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>
    </aside>
</div>