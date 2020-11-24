package com.dcms.pojo.news;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/23 0023 17:01
 * Description:
 **/
@Data
public class News {
    private String newsId;      //文章编号
    private String headLine;    //文章标题
    private String newsLabel;   //标签
    private String author;      //发布人（作者）
    private String general;     //文章概要
    private String content;     //内容
    private String newsTime;     //上传时间
    private String status;      //状态

    public String getNewsId() {
        return newsId;
    }

    public void setNewsId(String newsId) {
        this.newsId = newsId;
    }

    public String getHeadLine() {
        return headLine;
    }

    public void setHeadLine(String headLine) {
        this.headLine = headLine;
    }

    public String getNewsLabel() {
        return newsLabel;
    }

    public void setNewsLabel(String newsLabel) {
        this.newsLabel = newsLabel;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGeneral() {
        return general;
    }

    public void setGeneral(String general) {
        this.general = general;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(String newsTime) {
        this.newsTime = newsTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
