package com.qst.socket;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.qst.util.JsonUtils;
import com.qst.vo.ReceiveMsg;
import com.qst.vo.SendMsg;

@ServerEndpoint("/websocket/{uId}")
public class UserChat {
	
    private static Integer onlineNum = 0; //当前在线人数，线程安全
    private static final Map<String, Session> client = new HashMap<>();//存放每  一个客户的WebSocketServer对象，线程安全
    
    
    public void showAllUser(){
    	Set<String> keySet = this.client.keySet();
    	for (String string : keySet) {
			System.out.println(string);
		}
    }
    
    /**
     * 连接成功
     * @param session 会话信息
     */
    @OnOpen
    public void onOpen(@PathParam(value="uId") String uId,Session session){
    	System.out.println(uId);
        //这里可以绑定用户名 然后定位用户名队形的session
        client.put(uId, session);
        this.addOnlineNum();
        System.out.println("有一个新的连接加入，当前在线" + this.getOnlineNum() + "人");
        showAllUser();
    }

    /**
     * 连接关闭
     */
    @OnClose
    public void onClose(@PathParam(value="uId") String uId){
        client.remove(uId);
        this.subOnlineNum();
        System.out.println("有一个连接断开当前在线" + this.getOnlineNum() + "人");
        showAllUser();
    }

    /**
     * 连接失败
     * @param session 会话信息
     * @param error 异常信息
     */
    @OnError
    public void onError(Session session, Throwable error){
        System.out.println("发生错误");
        error.printStackTrace();
    }

    /**
     * 发送消息，不加注解，自己选择实现
     * @param session 会话信息
     * @param msg 消息内容
     * @throws IOException
     */
    public void OnSend(Session session, String msg) throws IOException{
    	if(session == null){
    		System.out.println("会话不存在");
    		return ;
    	}
        System.out.println("接受session对象的Id为" + session.getId());
        msg = msg.replaceAll("\\\\", "");
        msg = msg.replaceAll("\"\\{", "{");
        msg = msg.replaceAll("\\}\"", "}");
        session.getBasicRemote().sendText(msg);
        
        //session.getAsyncRemote().sendText(msg);
    }
    
    public static void main(String[] args) {
    	String msg = "\"{\"receive\"}\"";
    	System.out.println(msg + "  "  + "\"{");
    	 msg = msg.replaceAll("\"\\{", "{");
    	 System.out.println(msg);
	}

    /**
     * 收到客户端信息的回调方法
     * @param msg 消息内容
     * @throws IOException 
     */
    @OnMessage
    public void onMessage(String msg) throws IOException{
        System.out.println("消息监控，msg：" + msg);
        ReceiveMsg reMsg = JsonUtils.jsonToPojo(msg, ReceiveMsg.class);
        
       if( reMsg.getCode() == 1){
    	   System.out.println("发送消息");
    	   String dataJson = reMsg.getData();
    	   SendMsg sendMsg = JsonUtils.jsonToPojo(dataJson, SendMsg.class);
    	   System.out.println(sendMsg + " --> " + sendMsg.getReceive());
    	   OnSend(client.get(sendMsg.getReceive()), msg);
       }
        
        
        
        
        
        
       /* System.out.println("参数session：" + session.getId());
        System.out.println("本类session：" + this.session.getId());
        for (Map.Entry<String, Session> server: client.entrySet()) {
            if (!server.getKey().equals(this.session.getId())){ //自己不看 其他人都看
                try {
                    OnSend(server.getValue(), msg);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }*/
    }

    //增加一个在线人数
    private synchronized void addOnlineNum(){
        onlineNum++;
    }

    //减少一个在线人数
    private synchronized void subOnlineNum(){
        onlineNum--;
    }

    private Integer getOnlineNum(){
        return onlineNum;
    }

   /* public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }*/


}
