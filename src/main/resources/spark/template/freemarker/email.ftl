<!DOCTYPE html>
<html>

<head>
    <#include "header.ftl">

</head>

<body class="hold-transition skin-green sidebar-mini">
    <div class="wrapper">
        <#include "mainHeader.ftl">
            <#include "leftSide.ftl">
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>
        Mailbox
        <small>13 new messages</small>
      </h1>
                        <ol class="breadcrumb">
                            <li><a href="./home"><i class="fa fa-dashboard"></i> Home</a></li>
                            <li class="active">Mailbox</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="./compose" class="btn btn-primary btn-block margin-bottom">Compose</a>

                                <div class="box box-solid">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Folders</h3>

                                        <div class="box-tools">
                                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="box-body no-padding">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li class="active"><a href="./email"><i class="fa fa-inbox"></i> Inbox
                  <span class="label label-primary pull-right">12</span></a></li>
                                            <li><a href="#"><i class="fa fa-envelope-o"></i> Sent</a></li>
                                            <li><a href="#"><i class="fa fa-file-text-o"></i> Drafts</a></li>
                                            <li><a href="#"><i class="fa fa-filter"></i> Junk <span class="label label-warning pull-right">65</span></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li>
                                        </ul>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /. box -->
                                <div class="box box-solid">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Labels</h3>

                                        <div class="box-tools">
                                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div id="labels" class="box-body no-padding">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li id="red"><a href="#"><i class="fa fa-circle-o text-red"></i> Important</a></li>
                                            <li id="yellow"><a href="#"><i class="fa fa-circle-o text-yellow"></i> Promotions</a></li>
                                            <li id="blue"><a href="#"><i class="fa fa-circle-o text-light-blue"></i> Social</a></li>
                                        </ul>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>
                            <!-- /.col -->
                            <div class="col-md-9">
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Inbox</h3>

                                        <div class="box-tools pull-right">
                                            <div class="has-feedback">
                                                <input type="text" class="form-control input-sm" placeholder="Search Mail">
                                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                            </div>
                                        </div>
                                        <!-- /.box-tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body no-padding">
                                        <div class="mailbox-controls">
                                            <!-- Check all button -->
                                            <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i>
                                            </button>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                                            </div>
                                            <!-- /.btn-group -->
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                                            <div class="pull-right">
                                                1-50/200
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                                                </div>
                                                <!-- /.btn-group -->
                                            </div>
                                            <!-- /.pull-right -->
                                        </div>
                                        <div id="inbox" class="table-responsive mailbox-messages">
                                            <table class="table table-hover table-striped">
                                                <tbody>
                                                    <tr class="redMail">
                                                        <td>
                                                            <input type="checkbox">
                                                        </td>
                                                        <td class="mailbox-star"><a href="#"><i class="fa fa-star text-red"></i></a></td>
                                                        <td class="mailbox-name"><a href="./read">OIS</a></td>
                                                        <td class="mailbox-subject"><b>December Global Perspective newsletter</b> - Greetings from OIS...
                                                        </td>
                                                        <td class="mailbox-attachment"></td>
                                                        <td class="mailbox-date">5 mins ago</td>
                                                    </tr>
                                                    <tr class="yellowMail">
                                                        <td>
                                                            <input type="checkbox">
                                                        </td>
                                                        <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                        <td class="mailbox-name"><a href="./read">SIS Communications</a></td>
                                                        <td class="mailbox-subject"><b>This Week at SIS</b> - Univeristy Events...
                                                        </td>
                                                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                        <td class="mailbox-date">28 mins ago</td>
                                                    </tr>
                                                    <tr class="blueMail">
                                                        <td>
                                                            <input type="checkbox">
                                                        </td>
                                                        <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-light-blue"></i></a></td>
                                                        <td class="mailbox-name"><a href="./read">INFSCI 2415 on Piazza</a></td>
                                                        <td class="mailbox-subject"><b>Reminder:OMET&amp;Big Data Talk</b> - There will be a Big Data talk tomorrow, 1pm at 3rd floor. Hope you won't miss it.
                                                        </td>
                                                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                        <td class="mailbox-date">11 hours ago</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- /.table -->
                                        </div>
                                        <!-- /.mail-box-messages -->
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-footer no-padding">
                                        <div class="mailbox-controls">
                                            <!-- Check all button -->
                                            <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i>
                                            </button>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                                            </div>
                                            <!-- /.btn-group -->
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                                            <div class="pull-right">
                                                1-50/200
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                                                </div>
                                                <!-- /.btn-group -->
                                            </div>
                                            <!-- /.pull-right -->
                                        </div>
                                    </div>
                                </div>
                                <!-- /. box -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </section>
                    <!-- /.content -->
                </div>
                <!-- /.content-wrapper -->
                <!-- Main Footer -->
                <#include "footer.ftl">
    </div>
    <!-- ./wrapper -->
    <#include "footerScript.ftl">
        <script src="./stylesheets/js/email.js"></script>
</body>

</html>