package com.devsuperior.dslearn.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.io.Serial;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson{

    @Serial
    private static final long serialVersionUID = 1L;

    @Column(name = "text_content")
    private String textContent;

    @Column(name = "video_uri")
    private String videoUri;

    public Content() {
    }

    // esse construtor recebe por heranca os atributos(argumentos) da classe Lesson e adiciona os atributos da classe Content
    public Content(Long id, String title, Integer position, Section section, String textContent, String videoUri) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUri = videoUri;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }

    public String getVideoUri() {
        return videoUri;
    }

    public void setVideoUri(String videoUri) {
        this.videoUri = videoUri;
    }

    // nao precisa implementar o equals e hashcode pq a classe Lesson ja implementa
}
