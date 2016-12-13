import javax.xml.bind.annotation.*;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Todolist {
    @XmlElement(name="todo")
    private Todo[] todos;

    public Todo[] getTodos() {
        return todos;
    }

    public void setTodos(Todo[] todos) {
        this.todos = todos;
    }
}