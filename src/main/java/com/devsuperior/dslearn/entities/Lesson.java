package com.devsuperior.dslearn.entities;

import jakarta.persistence.*;

import java.io.Serial;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * Ao mapear herança para um banco relacional, é preciso escolher a estratégia:
 * 1. Tabela única (SINGLE_TABLE): reúne todas as subclasses em uma só tabela, deixando campos específicos como NULL para os outros tipos.
 * 2. Tabelas separadas (JOINED / TABLE_PER_CLASS): cria uma tabela dedicada para cada subclasse da hierarquia,
 * e as relaciona com chaves estrangeiras...
 */
@Inheritance(strategy = InheritanceType.JOINED)
@Entity
@Table(name = "tb_lesson")
public abstract class Lesson implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private Integer position;

    // relacionamentos
    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section section;

    @ManyToMany
    @JoinTable(name = "tb_lessons_done",
            joinColumns = @JoinColumn(name = "lesson_id"),
            inverseJoinColumns = {
                    @JoinColumn(name = "user_id"),
                    @JoinColumn(name = "offer_id")
            })
    private Set<Enrollment> enrollmentsDone = new HashSet<>();

    public Lesson() {
    }

    public Lesson(Long id, String title, Integer position, Section section) {
        this.id = id;
        this.title = title;
        this.position = position;
        this.section = section;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public Set<Enrollment> getEnrollmentsDone() {
        return enrollmentsDone;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Lesson lesson)) return false;
        return Objects.equals(id, lesson.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
