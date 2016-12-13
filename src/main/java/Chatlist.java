import javax.xml.bind.annotation.*;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Chatlist {
    @XmlElement(name="chat")
    private Chat[] chats;

    public Chat[] getChats() {
        return chats;
    }

    public void setChats(Chat[] chats) {
        this.chats = chats;
    }
}