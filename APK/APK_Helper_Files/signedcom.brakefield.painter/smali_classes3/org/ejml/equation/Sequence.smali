.class public Lorg/ejml/equation/Sequence;
.super Ljava/lang/Object;
.source "Sequence.java"


# instance fields
.field operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ejml/equation/Operation;",
            ">;"
        }
    .end annotation
.end field

.field output:Lorg/ejml/equation/Variable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/Sequence;->operations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOperation(Lorg/ejml/equation/Operation;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/ejml/equation/Sequence;->operations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public perform()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lorg/ejml/equation/Sequence;->operations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/ejml/equation/Sequence;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/Operation;

    invoke-virtual {v1}, Lorg/ejml/equation/Operation;->process()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
