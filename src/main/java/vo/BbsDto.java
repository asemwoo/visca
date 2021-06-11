package vo;

import java.sql.Timestamp;

public class BbsDto {
    private int bbsId = 1, Hit = 0;
    private String Title, Content, Category, id;
    private Timestamp Date;

    public int getBbsId() {
        return bbsId;
    }
    public void setBbsId(int bbsId) {
        this.bbsId = bbsId;
    }
    public int getHit() {
        return Hit;
    }
    public void setHit(int Hit) {
        this.Hit = Hit;
    }
    public String getTitle() {
        return Title;
    }
    public void setTitle(String Title) {
        this.Title = Title;
    }
    public String getContent() {
        return Content;
    }
    public void setContent(String Content) {
        this.Content = Content;
    }
    public String getCategory() {
        return Category;
    }
    public void setCategory(String Category) {
        this.Category = Category;
    }
    public Timestamp getDate() {
        return Date;
    }
    public void setDate(Timestamp Date) {
        this.Date = Date;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("BbsDto [bbsId=").append(bbsId).append(", Hit=").append(Hit).append(", Title=")
                .append(Title).append(", Content=").append(Content).append(", Category=")
                .append(Category).append(", Date=").append(Date).append(", id=").append(id).append("]");
        return builder.toString();
    }


}