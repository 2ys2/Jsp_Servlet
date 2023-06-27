package edu.kosa.thumb;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;

public class Thumbnail {
	
	//썸네일 이미지 생성하는 메소드
	public static void createImage(String loadFile, String saveFile, String fileExt, int zoom)
		throws Exception {
	
	
	File save = new File(saveFile); //썸네일 이미지
	//loadFile은 원본 이미지 파일, ReneredOp 객체 생성
	RenderedOp op = JAI.create("fileload", loadFile);
	//BufferdImage 이미지 객체 얻어와서
	BufferedImage im = op.getAsBufferedImage();
	
	if( zoom <= 0) zoom = 1;
	int width = im.getWidth() / zoom; //축소
	int heigth = im.getHeight() / zoom;
	
	//메모리에 이미지 공간을 생성
	BufferedImage thumb = new BufferedImage(width, heigth, BufferedImage.TYPE_INT_RGB);
	
	Graphics2D g2 = thumb.createGraphics();
	
	//메모리의 이미지 공간에 원본 이미지를 width, heigth 크기로 그린다.
	//실제로 그려주는 부분
	g2.drawImage(im, 0, 0, width, heigth, null); // 0,0 부터 크기,높이 만큼
	ImageIO.write(thumb, fileExt.toUpperCase(), save); //메모리에 그린 이미지를 파일로 저장
	

}
}
