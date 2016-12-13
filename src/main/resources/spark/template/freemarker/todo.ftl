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
                        <h1>Home</h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                        </ol>
                    </section>
                    <!-- Main content -->
                    <div class="content">
                        <div class="row">
                            <!-- Left col -->
                            <section class="col-lg-6 connectedSortable">
                                <!-- TO DO List -->
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <i class="ion ion-clipboard"></i>
                                        <h3 class="box-title">To Do List</h3>
                                        <div class="box-tools pull-right">
                                            <ul class="pagination pagination-sm inline">
                                                <li><a href="#">&laquo;</a></li>
                                                <li><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body" style="position: relative; overflow: auto; width: auto; height: 304px;">
                                        <ul class="todo-list">
                                            <#list todoList as todo>
                                                <li>
                                                    <!-- drag handle -->
                                                    <span class="handle">
                                          <i class="fa fa-ellipsis-v"></i>
                                          <i class="fa fa-ellipsis-v"></i>
                                        </span>
                                                    <!-- checkbox -->
                                                    <input type="checkbox" value="">
                                                    <!-- todo text -->
                                                    <span class="text">${todo.content}</span>
                                                    <!-- Emphasis label -->
                                                    <small class="label label-${todo.color}"><i class="fa fa-clock-o"></i>${todo.available}</small>
                                                    <!-- General tools such as edit or delete-->
                                                    <div class="tools">
                                                        <i data-index="3" class="fa fa-edit" data-toggle="modal" data-target="#ChangeTodo" data-task=${todo.content} data-date=${todo.date}></i>
                                                        <i class="fa fa-trash-o"></i>
                                                    </div>
                                                </li>
                                            </#list>
                                        </ul>
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-footer clearfix no-border">
                                        <button type="button" class="btn btn-default pull-right" data-toggle="modal" data-target="#AddTodo"><i class="fa fa-plus"></i> Add item</button>
                                    </div>
                                </div>

                            </section>

                        </div>
                    </div>
                    <!-- /.content -->
                </div>
                <!-- /.content-wrapper -->
                <!-- Add Todo Modal -->
                <div class="modal fade" id="AddTodo" tabindex="-1" role="dialog" aria-labelledby="AddTodoLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="AddTodoLabel">Add Item</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Item:</label>

                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-info"></i>
                                        </div>
                                        <input id="item" type="text" class="form-control pull-right">
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
                                <button id="addTodo" type="button" class="btn btn-primary">Add Item</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--   / .box -->
                <!-- Change Todo Modal -->
                <div class="modal fade" id="ChangeTodo" tabindex="-1" role="dialog" aria-labelledby="ChangeTodoLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="ChangeTodoLabel">Change Item</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Item:</label>

                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-info"></i>
                                        </div>
                                        <input id="item" type="text" class="form-control pull-right">
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
                                <button id="save" type="button" class="btn btn-primary">Save Changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--   / .box -->
                <#include "footer.ftl">
    </div>
    <!-- ./wrapper -->

    <#include "footerScript.ftl">
        <script src="./stylesheets/js/home.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <!-- <script src="dist/js/pages/dashboard.js"></script> -->
</body>

</html>