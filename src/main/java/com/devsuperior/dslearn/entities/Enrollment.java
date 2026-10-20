package com.devsuperior.dslearn.entities;

import com.devsuperior.dslearn.entities.pk.EnrollmentPK;
import jakarta.persistence.*;

import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment {

    // chave primária de uma classe de associação é representada por uma classe auxiliar,
    // que contém as chaves primárias das entidades associadas. No caso da classe Enrollment,
    // a chave primária é composta pelas chaves primárias das entidades User e Offer,
    // que são representadas pela classe EnrollmentPK.
    @EmbeddedId // tem classe auxiliar com o '@Embeddable'
    private EnrollmentPK id = new EnrollmentPK();

    @Column(name = "enroll_moment",columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant enrollMoment;

    @Column(name = "refund_moment",columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant refundMoment;

    private boolean available;

    @Column(name = "only_update")
    private boolean onlyUpdate;

    @ManyToMany(mappedBy = "enrollmentsDone")
    private Set<Lesson> lessonsDone = new HashSet<>();

    @OneToMany(mappedBy = "enrollment")
    private Set<Deliver> delivers = new HashSet<>();

    public Enrollment() {
    }

    public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available, boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    public EnrollmentPK getId() {
        return id;
    }

    public User getStudent() {
        return id.getUser();
    }

    public void setStudent(User user) {
        id.setUser(user);
    }

    public Offer getOffer() {
        return id.getOffer();
    }

    public void setOffer(Offer offer) {
        id.setOffer(offer);
    }

    public void setEnrollMoment(Instant enrollMoment) {
        this.enrollMoment = enrollMoment;
    }

    public Instant getRefundMoment() {
        return refundMoment;
    }

    public void setRefundMoment(Instant refundMoment) {
        this.refundMoment = refundMoment;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public boolean isOnlyUpdate() {
        return onlyUpdate;
    }

    public void setOnlyUpdate(boolean onlyUpdate) {
        this.onlyUpdate = onlyUpdate;
    }

    public Instant getEnrollMoment() {
        return enrollMoment;
    }

    public Set<Lesson> getLessonsDone() {
        return lessonsDone;
    }

    public Set<Deliver> getDelivers() {
        return delivers;
    }
}
