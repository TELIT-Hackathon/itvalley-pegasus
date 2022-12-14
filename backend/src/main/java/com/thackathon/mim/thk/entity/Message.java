package com.thackathon.mim.thk.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;
import java.time.LocalDate;

@Getter
@Setter
@Entity
@Table(name = "message")
public class Message implements Serializable {

    @Id
    @GeneratedValue
    @Column(unique = true , nullable = false)
    private Long id;

    private String content;

    @ManyToOne
    @JoinColumn(name = "addressee_id", referencedColumnName = "id")
    private Person addressee;

    @ManyToOne
    @JoinColumn(name = "recipient_id", referencedColumnName = "id")
    private Person recipient;

    private LocalDate createdDate;

}
