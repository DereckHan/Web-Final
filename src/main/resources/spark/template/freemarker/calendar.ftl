<!DOCTYPE html>
<html>

<head>
    <#include "header.ftl">

</head>

<body class="hold-transition skin-green sidebar-mini">
    <div class="wrapper">
        <#include "mainHeader.ftl">

            <!-- Left side column. contains the logo and sidebar -->
            <#include "leftSide.ftl">
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>
        Calendar
        <small>Control panel</small>
      </h1>
                        <ol class="breadcrumb">
                            <li><a href="./home"><i class="fa fa-dashboard"></i> Home</a></li>
                            <li class="active">Calendar</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="box box-solid">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">Draggable Events</h4>
                                    </div>
                                    <div class="box-body">
                                        <!-- the events -->
                                        <div id="external-events">
                                            <div class="external-event bg-green">Lunch</div>
                                            <div class="external-event bg-yellow">Go home</div>
                                            <div class="external-event bg-aqua">Do homework</div>
                                            <div class="external-event bg-light-blue">Work on Web design</div>
                                            <div class="checkbox">
                                                <label for="drop-remove">
                                                    <input type="checkbox" id="drop-remove"> remove after drop
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /. box -->
                                <div class="box box-solid">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Create Event</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                                            <!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
                                            <ul class="fc-color-picker" id="color-chooser">
                                                <li><a class="text-aqua" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-blue" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-light-blue" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-teal" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-yellow" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-orange" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-green" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-lime" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-red" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-purple" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-fuchsia" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-muted" href="#"><i class="fa fa-square"></i></a></li>
                                                <li><a class="text-navy" href="#"><i class="fa fa-square"></i></a></li>
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                        <div class="input-group">
                                            <input id="new-event" type="text" class="form-control" placeholder="Event Title">

                                            <div class="input-group-btn">
                                                <button id="add-new-event" type="button" class="btn btn-primary btn-flat">Add</button>
                                            </div>
                                            <!-- /btn-group -->
                                        </div>
                                        <!-- /input-group -->
                                    </div>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-md-9">
                                <div class="box box-primary">
                                    <div class="box-body no-padding">
                                        <!-- THE CALENDAR -->
                                        <div id="calendar"></div>
                                    </div>
                                    <!-- /.box-body -->
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
    <!-- Add New Event -->
    <div class="modal fade" id="AddEvent" tabindex="-1" role="dialog" aria-labelledby="AddEventLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="AddEventLabel">Add New Event</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Event:</label>

                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa-tag"></i>
                            </div>
                            <input id="event" type="text" class="form-control pull-right">
                        </div>
                        <label>Date:</label>

                        <div id="datepicker" class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right" id="datepicker">
                        </div>
                        <!-- /.input group -->
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button id="addEvent" type="button" class="btn btn-primary">Add Event</button>
                </div>
            </div>
        </div>
    </div>
    <!--   / .box -->
    <#include "footerScript.ftl">
        <script src="./stylesheets/js/calendar.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <!-- <script src="dist/js/pages/dashboard.js"></script> -->
</body>

</html>