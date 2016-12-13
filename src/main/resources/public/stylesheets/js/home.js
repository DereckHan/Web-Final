  //Make the dashboard widgets sortable Using jquery UI
  $(".connectedSortable").sortable({
      placeholder: "sort-highlight",
      connectWith: ".connectedSortable",
      handle: ".box-header, .nav-tabs",
      forcePlaceholderSize: true,
      zIndex: 999999
  });
  $(".connectedSortable .box-header, .connectedSortable .nav-tabs-custom").css("cursor", "move");
  //jQuery UI sortable for the todo list
  $(".todo-list").sortable({
      placeholder: "sort-highlight",
      handle: ".handle",
      forcePlaceholderSize: true,
      zIndex: 999999
  });
  $("ul.todo-list li input[type='checkbox']").click(function () {
      if (this.parentElement.className === "done") {
          this.parentElement.className = "";
      } else {
          this.parentElement.className += "done";
      }
  });

  $("i.fa-trash-o").click(function () {
      this.parentElement.parentElement.remove();
  });

  $('div#datepicker').datepicker({
      format: "yyyy-mm-dd",
      calendarWeeks: true
  });

  $("#ChangeTodo").on('show.bs.modal', function (e) {
      let item = $(e.currentTarget).find('input[id="item"]');
      item.val($(e.relatedTarget).data("task"));
      let date = $(e.currentTarget).find('input[id="datepicker"]');
      date.val($(e.relatedTarget).data("date"));
      let index = $(e.relatedTarget).data("index");
      item[0].setAttribute("index", parseInt(index));
  });

  $("#save").click(function () {
      let task = $("#ChangeTodo input#item").val();
      let index = $("#ChangeTodo input#item")[0].getAttribute("index");
      let span = $("ul.todo-list li span.text")[index];
      let txt = document.createTextNode(task);
      span.innerText = txt.textContent;
      $("#ChangeTodo").modal("hide");
  })

  $("button#addTodo").click(function () {
      console.log("ys");
      let task = $("#AddTodo input#item").val();
      let date = $("#AddTodo input#datepicker").val();
      let index = $("ul.todo-list li span.text").length;
      let node = document.createElement("li");
      let span1 = document.createElement("span");
      span1.setAttribute("class", "handle");
      let i1 = document.createElement("i");
      i1.setAttribute("class", "fa fa-ellipsis-v");
      let i2 = document.createElement("i");
      i2.setAttribute("class", "fa fa-ellipsis-v");
      span1.appendChild(i1);
      span1.appendChild(i2);
      node.appendChild(span1);
      let input = document.createElement("input");
      input.setAttribute("type", "checkbox");
      input.setAttribute("value", "");
      node.appendChild(input);
      let span2 = document.createElement("span");
      span2.setAttribute("class", "text");
      let txt = document.createTextNode(task);
      span2.innerText = txt.textContent;
      node.appendChild(span2);
      let small = document.createElement("small");
      small.setAttribute("class", "label label-danger");
      let i3 = document.createElement("i");
      i3.setAttribute("class", "fa fa-clock-o");
      i3.innerHTML = "1 hour";
      small.appendChild(i3);
      node.appendChild(small);
      let div = document.createElement("div");
      div.setAttribute("class", "tools");
      let i4 = document.createElement("i");
      i4.setAttribute("data-index", index);
      i4.setAttribute("class", "fa fa-edit");
      i4.setAttribute("data-toggle", "modal");
      i4.setAttribute("data-target", "#ChangeTodo");
      i4.setAttribute("data-task", task);
      i4.setAttribute("data-date", date);
      let i5 = document.createElement("i");
      i5.setAttribute("class", "fa fa-trash-o");
      div.appendChild(i4);
      div.appendChild(i5);
      node.appendChild(div);
      $("ul.todo-list").append(node);
      $("#AddTodo").modal("hide");
  })

  $("button#addChat").click(function () {
      let chat = $("#inputChat").val();
      let date = new Date();
      let div = document.createElement("div");
      div.setAttribute("class", "item");
      let img = document.createElement("img");
      img.setAttribute("src", "./stylesheets/img/user1.jpg");
      img.setAttribute("alt", "user image");
      img.setAttribute("class", "online");
      div.appendChild(img);
      let p = document.createElement("p");
      p.setAttribute("class", "message");
      let a = document.createElement("a");
      a.setAttribute("href", "./pages/profile.html");
      a.setAttribute("class", "name");
      let small = document.createElement("small");
      small.setAttribute("class", "text-muted pull-right");
      let i = document.createElement("i");
      i.setAttribute("class", "fa fa-clock-o");
      small.appendChild(i);
      small.innerHTML = small.innerHTML + date.getHours() + ":" + date.getMinutes();
      a.appendChild(small);
      a.innerHTML = a.innerHTML + "Derek Han";
      p.appendChild(a);
      p.innerHTML = p.innerHTML + chat;
      div.appendChild(p);
      $(".chat")[0].appendChild(div);
      $("#inputChat").val("");
  })

  $("button#addEvent").click(function () {
      let div = $("#taskCalendar .col-sm-6")[1];
      let event = $("#event").val();
      let date = new Date();
      let percent = "40%";
      let div1 = document.createElement("div");
      div1.setAttribute("class", "clearfix");
      let span = document.createElement("span");
      span.setAttribute("class", "pull-left");
      span.innerHTML += event;
      let small = document.createElement("small");
      small.setAttribute("class", "pull-right");
      small.innerHTML += percent;
      div1.appendChild(span);
      div1.appendChild(small);
      let div2 = document.createElement("div");
      div2.setAttribute("class", "progress xs");
      let div3 = document.createElement("div");
      div3.setAttribute("class", "progress-bar progress-bar-green");
      div3.setAttribute("style", "width:" + percent + ";");
      div2.appendChild(div3);
      div.appendChild(div1);
      div.appendChild(div2);
      $("#AddEvent").modal("hide");
  })