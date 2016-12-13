import java.io.File;
import java.sql.*;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;

import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;

import com.google.gson.Gson;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

public class Main {

  public static void main(String[] args) {

    port(Integer.valueOf(System.getenv("PORT")));
    staticFileLocation("/public");
      Gson gson = new Gson();

      JAXBContext jc = null;
      User user = null;
      try {
          jc = JAXBContext.newInstance(User.class);
          Unmarshaller unmarshaller = jc.createUnmarshaller();
          File xml = new File("src/main/resources/public/data/user.xml");
          user = (User) unmarshaller.unmarshal(xml);
      } catch (JAXBException e) {
          e.printStackTrace();
      }

      User finalUser1 = user;
      get("/GetJson", "application/json", (request, response) -> {
          return finalUser1;
      }, new JsonTransformer());

      post("/json", (request, response) -> {
          return finalUser1;
      }, gson::toJson);


      get("/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "index.ftl");
        }, new FreeMarkerEngine());
      User finalUser = user;
      get("/home", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("name", finalUser.getName());
            attributes.put("membership", finalUser.getMembership());
            attributes.put("todoList", finalUser.getTodolist().getTodos());
            attributes.put("chatList", finalUser.getChatlist().getChats());
            attributes.put("eventList", finalUser.getEventlist().getEvents());

            return new ModelAndView(attributes, "home.ftl");
        }, new FreeMarkerEngine());

      get("/calendar", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          attributes.put("name", finalUser.getName());
          attributes.put("membership", finalUser.getMembership());
          attributes.put("eventList", finalUser.getEventlist().getEvents());
          return new ModelAndView(attributes, "calendar.ftl");
      }, new FreeMarkerEngine());

      get("/email", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
        attributes.put("name", finalUser.getName());
            attributes.put("membership", finalUser.getMembership());
          return new ModelAndView(attributes, "email.ftl");
      }, new FreeMarkerEngine());

      get("/compose", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
                      attributes.put("name", finalUser.getName());
            attributes.put("membership", finalUser.getMembership());
          return new ModelAndView(attributes, "compose.ftl");
      }, new FreeMarkerEngine());
      
      get("/read", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          attributes.put("name", finalUser.getName());
          attributes.put("membership", finalUser.getMembership());
          return new ModelAndView(attributes, "read.ftl");
      }, new FreeMarkerEngine());

      get("/todo", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          attributes.put("name", finalUser.getName());
          attributes.put("membership", finalUser.getMembership());
          attributes.put("todoList", finalUser.getTodolist().getTodos());
          return new ModelAndView(attributes, "todo.ftl");
      }, new FreeMarkerEngine());

      get("/reserve", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          attributes.put("name", finalUser.getName());
          attributes.put("membership", finalUser.getMembership());
          return new ModelAndView(attributes, "reserve.ftl");
      }, new FreeMarkerEngine());

      get("/profile", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          attributes.put("name", finalUser.getName());
          attributes.put("membership", finalUser.getMembership());
          return new ModelAndView(attributes, "profile.ftl");
      }, new FreeMarkerEngine());

  }

}
