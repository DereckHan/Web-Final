import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
public class Event {

    private String context;
    private String process;

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process;
    }
}