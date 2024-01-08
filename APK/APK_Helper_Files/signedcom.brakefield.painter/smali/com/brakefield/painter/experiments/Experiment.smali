.class public abstract Lcom/brakefield/painter/experiments/Experiment;
.super Ljava/lang/Object;
.source "Experiment.java"


# instance fields
.field protected values:Lcom/brakefield/painter/experiments/Values;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/experiments/Values;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/brakefield/painter/experiments/Experiment;->values:Lcom/brakefield/painter/experiments/Values;

    .line 11
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/Experiment;->populate(Lcom/brakefield/painter/experiments/Values;)V

    return-void
.end method


# virtual methods
.method protected abstract populate(Lcom/brakefield/painter/experiments/Values;)V
.end method
