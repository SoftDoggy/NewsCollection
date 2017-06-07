package com.eiffai.bean;
import javax.imageio.ImageIO;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import java.awt.*;

import java.awt.image.BufferedImage;

import java.io.IOException;

import java.io.OutputStream;

import java.util.Random;

public class ValidationCode extends HttpServlet{
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //�����֤�뼯�ϵĳ���
        int charsLength = codeChars.length();
        //����3����¼�ǹرտͻ���������Ļ�����
        //��3����䶼���Թر�������Ļ���������������������İ汾��ͬ������3������֧��Ҳ��ͬ
        //��ˣ�Ϊ�˱��������ͬʱʹ����3��������ر�������Ļ�����
        resp.setHeader("ragma", "No-cache");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expires", 0);
        //����ͼ����֤��ĳ��Ϳ�
        int width = 90, height = 30;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics(); //�������������ֵ�Graphics����
        Random random = new Random();
        g.setColor(getRandomColor(180, 250));
        g.fillRect(0, 0, width, height);
        g.setFont(new Font("Times New Roman",Font.ITALIC,height));
        g.setColor(getRandomColor(120, 180));
        //�û��������������ɵ���֤��
        StringBuilder validationCode = new StringBuilder();
        //��֤����������
        String[] fontNames = {"Times New Roman","Book antiqua","Arial"};
        //�������4����֤��
        for(int i = 0; i < 4; i++){
            //������õ�ǰ��֤����ַ�������
            g.setFont(new Font(fontNames[random.nextInt(3)],Font.ITALIC,height));
            //�����õ�ǰ��֤����ַ�
            char codeChar = codeChars.charAt(random.nextInt(charsLength));
            validationCode.append(codeChar);
            //������õ�ǰ��֤���ַ�����ɫ
            g.setColor(getRandomColor(10, 100));
            //��ͼ���������֤���ַ���x��y����������ɵ�
            g.drawString(String.valueOf(codeChar), 16*i + random.nextInt(7), height-random.nextInt(6));
        }
        //���HttpSession����
        HttpSession session = req.getSession();
        //����session����5����ʧЧ
        session.setMaxInactiveInterval(5*60);
        //����֤�뱣����session������,keyΪvalidation_code
        session.setAttribute("validation_code", validationCode.toString());
        //�ر�Graphics����
        g.dispose();
        OutputStream outS = resp.getOutputStream();
        ImageIO.write(image, "JPEG", outS);
        outS.close();
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
    //ͼ����֤����ַ�����ϵͳ�����������ַ�����ѡ��һЩ�ַ���Ϊ��֤��
    private static String codeChars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    //����һ�������ɫ
    private static Color getRandomColor(int minColor, int maxColor){
        Random random = new Random();
        if(minColor > 255){
            minColor = 255;
        }
        if(maxColor > 255){
            maxColor = 255;
        }
        //���r�������ɫֵ
        int red = minColor + random.nextInt(maxColor-minColor);
        //g
        int green = minColor + random.nextInt(maxColor-minColor);
        //b
        int blue = minColor + random.nextInt(maxColor-minColor);
        return new Color(red,green,blue);
    }
}
