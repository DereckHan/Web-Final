import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
public class Chat {

    private String context;
    private String speaker;
    private String time;

    public Chat() {
    }

    public Chat(String context) {
        this.context = context;
    }

    private String src;

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getSpeaker() {
        return speaker;
    }

    public void setSpeaker(String speaker) {
        this.speaker = speaker;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }
}