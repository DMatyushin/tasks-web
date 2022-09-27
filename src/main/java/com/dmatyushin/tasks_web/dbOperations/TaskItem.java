package com.dmatyushin.tasks_web.dbOperations;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name="tasks")
public class TaskItem {

    @Id
    @GeneratedValue()
    private Integer id;

    @Column(name = "title")
    private String taskTitle;

    @Column(name = "descr")
    private String taskDescription;

    @Column(name = "author")
    private String taskAuthor;

    @Column(name = "executor")
    private String taskExecutor;

    @Column(name = "date")
    private long createDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTaskTitle() {
        return taskTitle;
    }

    public void setTaskTitle(String taskTitle) {
        this.taskTitle = taskTitle;
    }

    public String getTaskDescription() {
        return taskDescription;
    }

    public void setTaskDescription(String taskDescription) {
        this.taskDescription = taskDescription;
    }

    public String getTaskAuthor() {
        return taskAuthor;
    }

    public void setTaskAuthor(String taskAuthor) {
        this.taskAuthor = taskAuthor;
    }

    public String getTaskExecutor() {
        return taskExecutor;
    }

    public void setTaskExecutor(String taskExecutor) {
        this.taskExecutor = taskExecutor;
    }

    public String getCreateDate() {
        Date time = new Date(this.createDate * 1000);
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        String formattedDate = sdf.format(time);
        return formattedDate;
    }

    public void setCreateDate(long createDate) {
        this.createDate = createDate;
    }
}
