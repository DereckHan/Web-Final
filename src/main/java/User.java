import javax.xml.bind.annotation.*;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class User {
    @XmlElement
    private Chatlist chatlist;
    @XmlElement
    private Eventlist eventlist;
    @XmlElement
    private Todolist todolist;
    @XmlElement
    private String  name;
    @XmlElement
    private String email;
    @XmlElement
    private String password;
    @XmlElement
    private String  membership;

    public Eventlist getEventlist() {
        return eventlist;
    }

    public void setEventlist(Eventlist eventlist) {
        this.eventlist = eventlist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMembership() {
        return membership;
    }

    public void setMembership(String membership) {
        this.membership = membership;
    }

    public Todolist getTodolist() {
        return todolist;
    }

    public void setTodolist(Todolist todolist) {
        this.todolist = todolist;
    }

    public Chatlist getChatlist() {
        return chatlist;
    }

    public void setChatlist(Chatlist chatlist) {
        this.chatlist = chatlist;
    }
}