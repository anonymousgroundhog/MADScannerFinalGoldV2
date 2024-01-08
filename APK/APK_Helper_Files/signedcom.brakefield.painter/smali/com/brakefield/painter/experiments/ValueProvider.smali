.class public abstract Lcom/brakefield/painter/experiments/ValueProvider;
.super Ljava/lang/Object;
.source "ValueProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateValue(Lcom/brakefield/painter/experiments/Values;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/painter/experiments/Values;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/experiments/Values;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/brakefield/painter/experiments/ValueProvider;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/brakefield/painter/experiments/ValueProvider;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_1
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p3}, Lcom/brakefield/painter/experiments/ValueProvider;->getFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p3}, Lcom/brakefield/painter/experiments/ValueProvider;->getDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/brakefield/painter/experiments/ValueProvider;->getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p0, p3}, Lcom/brakefield/painter/experiments/ValueProvider;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_5
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/brakefield/painter/experiments/Values;->replace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Double;"
        }
    .end annotation
.end method

.method public abstract getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation
.end method

.method public abstract getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Long;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract setup(Landroid/app/Activity;Lcom/brakefield/painter/experiments/Values;)V
.end method

.method protected updateValues(Lcom/brakefield/painter/experiments/Values;)V
    .locals 3

    .line 20
    invoke-virtual {p1}, Lcom/brakefield/painter/experiments/Values;->getNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/brakefield/painter/experiments/ValueProvider;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/brakefield/painter/experiments/ValueProvider;->updateValue(Lcom/brakefield/painter/experiments/Values;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
