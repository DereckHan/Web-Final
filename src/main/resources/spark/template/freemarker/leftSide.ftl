<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="./stylesheets/img/user1.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${name}</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                            </button>
                        </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
            <li>
                <a href="./home"> <i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
            </li>
            <!-- Reserve a study room -->
            <li>
                <a href="./reserve"> <i class="fa fa-tv"></i> <span>Reserve Study Room</span></a>
            </li>
            <!-- Todo List -->
            <li>
                <a href="./todo"> <i class="fa fa-list"></i> <span>To Do List</span></a>
            </li>
            <!-- Mailbox -->
            <li class="treeview">
                <a href="./email"><i class="fa fa-envelope"></i> <span>Mailbox</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                <ul class="treeview-menu">
                    <li class="active">
                        <a href="./email">Inbox
                                    <span class="pull-right-container">
                                        <span class="label label-primary pull-right">12</span>
                                    </span>
                            </a>
                    </li>
                    <li>
                        <a href="./compose">Compose</a>
                    </li>
                    <li>
                        <a href="./read">Read</a>
                    </li>
                </ul>
            </li>
            <!-- Calendar -->
            <li>
                <a href="./calendar">
                    <i class="fa fa-calendar"></i>
                    <span>Calendar</span>
                    <span class="pull-right-container">
                                <small class="label pull-right bg-red">3</small>
                            </span>
                </a>
            </li>
            <!-- Profile -->
            <li>
                <a href="./profile"> <i class="fa fa-user"></i> <span>Profile</span></a>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>