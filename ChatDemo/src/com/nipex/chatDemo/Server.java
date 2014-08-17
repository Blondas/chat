package com.nipex.chatDemo;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.*;

@ServerEndpoint("/server")
public class Server {
	
	@OnOpen
	public void handleOpen(){
		System.out.println("Client is now connected...");
	}
	
	@OnMessage
	public String handleMessage(String message){
		System.out.println("receive from client " + message);
		String replymessage = "echo " + message;
		System.out.println("send to client " + replymessage);
		return replymessage;
	}
	
	@OnClose
	public void handleClose(){
		System.out.println("Client is now disconnected...");

	}
	
	@OnError
	public void handleError(Throwable t){
		t.printStackTrace();
	}
}
