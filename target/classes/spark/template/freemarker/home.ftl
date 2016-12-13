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
                                <div class="box box-success">
                                    <div class="box-header ui-sortable-handle" style="cursor: move;">
                                        <i class="fa fa-comments-o"></i>

                                        <h3 class="box-title">Chat</h3>

                                        <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                                            <div class="btn-group" data-toggle="btn-toggle">
                                                <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i>
                                                </button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slimScrollDiv" style="position: relative; overflow: auto; width: auto; height: 250px;">
                                        <div class="box-body chat" id="chat-box" style="overflow: auto; width: auto; height: 250px;">
                                            <#list 0..chatList?size-1 as i>
                                                <!-- chat item -->
                                                <div class="item">
                                                    <img src=${chatList[i].src} alt="user image" class="online">

                                                    <p class="message">
                                                        <a href="#" class="name">
                                                            <small class="text-muted pull-right"><i class="fa fa-clock-o"></i>${chatList[i].time}</small>${chatList[i].speaker}
                                                        </a>
                                                        ${chatList[i].context}
                                                    </p>
                                                    <#if i==0>

                                                        <div class="attachment">
                                                            <h4>Attachments:</h4>

                                                            <p class="filename">
                                                                proposal.pdf
                                                            </p>

                                                            <div class="pull-right">
                                                                <button type="button" class="btn btn-primary btn-sm btn-flat">Open</button>
                                                            </div>
                                                        </div>
                                                        <!-- /.attachment -->
                                                    </#if>
                                                </div>
                                                <!-- /.item -->
                                            </#list>
                                        </div>
                                        <div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 184.911px;"></div>
                                        <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
                                    </div>
                                    <!-- /.chat -->
                                    <div class="box-footer">
                                        <div class="input-group">
                                            <input id="inputChat" class="form-control" placeholder="Type message...">

                                            <div class="input-group-btn">
                                                <button id="addChat" type="button" class="btn btn-success"><i class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </section>
                            <section class="col-lg-6 connectedSortable">
                                <!--calendar-->
                                <div class="box box-solid bg-green-gradient">
                                    <div class="box-header ui-sortable-handle" style="cursor: move;">
                                        <i class="fa fa-calendar"></i>

                                        <h3 class="box-title">Calendar</h3>
                                        <!-- tools box -->
                                        <div class="pull-right box-tools">
                                            <!-- button with a dropdown -->
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-bars"></i></button>
                                                <ul class="dropdown-menu pull-right" role="menu">
                                                    <li><a href="#" data-toggle="modal" data-target="#AddEvent">Add new event</a></li>
                                                    <li><a href="#">Clear events</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="./calendar">View calendar</a></li>
                                                </ul>
                                            </div>
                                            <button type="button" class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                                            </button>
                                            <button type="button" class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                                            </button>
                                        </div>
                                        <!-- /. tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body no-padding">
                                        <!--The calendar -->
                                        <div id="calendar" style="width: 100%">
                                            <div class="datepicker datepicker-inline">
                                                <div class="datepicker-days" style="display: block;">
                                                    <table class="table table-condensed">
                                                        <thead>
                                                            <tr>
                                                                <th class="prev" style="visibility: visible;">«</th>
                                                                <th colspan="5" class="datepicker-switch">December 2016</th>
                                                                <th class="next" style="visibility: visible;">»</th>
                                                            </tr>
                                                            <tr>
                                                                <th class="dow">Su</th>
                                                                <th class="dow">Mo</th>
                                                                <th class="dow">Tu</th>
                                                                <th class="dow">We</th>
                                                                <th class="dow">Th</th>
                                                                <th class="dow">Fr</th>
                                                                <th class="dow">Sa</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="old day">27</td>
                                                                <td class="old day">28</td>
                                                                <td class="old day">29</td>
                                                                <td class="old day">30</td>
                                                                <td class="day">1</td>
                                                                <td class="day">2</td>
                                                                <td class="day">3</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="day">4</td>
                                                                <td class="day">5</td>
                                                                <td class="day">6</td>
                                                                <td class="day">7</td>
                                                                <td class="day">8</td>
                                                                <td class="day">9</td>
                                                                <td class="day">10</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="active day">11</td>
                                                                <td class="day">12</td>
                                                                <td class="day">13</td>
                                                                <td class="day">14</td>
                                                                <td class="day">15</td>
                                                                <td class="day">16</td>
                                                                <td class="day">17</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="day">18</td>
                                                                <td class="day">19</td>
                                                                <td class="day">20</td>
                                                                <td class="day">21</td>
                                                                <td class="day">22</td>
                                                                <td class="day">23</td>
                                                                <td class="day">24</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="day">25</td>
                                                                <td class="day">26</td>
                                                                <td class="day">27</td>
                                                                <td class="day">28</td>
                                                                <td class="day">29</td>
                                                                <td class="day">30</td>
                                                                <td class="day">31</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="new day">1</td>
                                                                <td class="new day">2</td>
                                                                <td class="new day">3</td>
                                                                <td class="new day">4</td>
                                                                <td class="new day">5</td>
                                                                <td class="new day">6</td>
                                                                <td class="new day">7</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-body -->
                                    <div id="taskCalendar" class="box-footer text-black">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <#list 0..eventList?size-1 as i>
                                                    <#if i % 2==0>
                                                        <!-- Progress bars -->
                                                        <div class="clearfix">
                                                            <span class="pull-left">${eventList[i].context}</span>
                                                            <small class="pull-right">${eventList[i].process}</small>
                                                        </div>
                                                        <div class="progress xs">
                                                            <div class="progress-bar progress-bar-green" style="width: ${eventList[i].process};"></div>
                                                        </div>
                                                    </#if>
                                                </#list>
                                            </div>
                                            <div class="col-sm-6">
                                                <#list 0..eventList?size-1 as i>
                                                    <#if i%2==1>
                                                        <!-- Progress bars -->
                                                        <div class="clearfix">
                                                            <span class="pull-left">${eventList[i].context}</span>
                                                            <small class="pull-right">${eventList[i].process}</small>
                                                        </div>
                                                        <div class="progress xs">
                                                            <div class="progress-bar progress-bar-green" style="width: ${eventList[i].process};"></div>
                                                        </div>
                                                    </#if>
                                                </#list>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- email -->
                                <div class="box box-info">
                                    <div class="box-header">
                                        <i class="fa fa-envelope"></i>
                                        <h3 class="box-title">Quick Email</h3>
                                        <!-- tools box -->
                                        <div class="pull-right box-tools">
                                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                                                <i class="fa fa-times"></i></button>
                                        </div>
                                        <!-- /. tools -->
                                    </div>
                                    <div class="box-body">
                                        <form action="#" method="post">
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="emailto" placeholder="Email to:">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="subject" placeholder="Subject">
                                            </div>
                                            <div>
                                                <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="box-footer clearfix">
                                        <button type="button" class="pull-right btn btn-default" id="sendEmail">Send
                                            <i class="fa fa-arrow-circle-right"></i></button>
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
                <#include "footer.ftl">
    </div>
    <!-- ./wrapper -->

    <#include "footerScript.ftl">
        <script src="./stylesheets/js/home.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <!-- <script src="dist/js/pages/dashboard.js"></script> -->
</body>

</html>