.class public Lcom/brakefield/infinitestudio/ui/components/Observe;
.super Ljava/lang/Object;
.source "Observe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected listener:Lcom/brakefield/infinitestudio/ui/components/OnChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "TT;>;"
        }
    .end annotation
.end field

.field private previous:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "TT;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/Observe;->previous:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/components/Observe;->listener:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/Observe;->previous:Ljava/lang/Object;

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/Observe;->previous:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/components/Observe;->previous:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/components/Observe;->listener:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
