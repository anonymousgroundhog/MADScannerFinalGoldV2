.class public Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
.super Lcom/brakefield/infinitestudio/ui/components/Observe;
.source "ObserveMultiple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/brakefield/infinitestudio/ui/components/Observe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final changes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 9
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->changes:Ljava/util/Map;

    .line 13
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->listener:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    return-void
.end method


# virtual methods
.method public addObserveChange(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->changes:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->changes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$new$0$com-brakefield-infinitestudio-ui-components-ObserveMultiple(Ljava/lang/Object;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->changes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/components/OnChange;

    invoke-interface {v1, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
