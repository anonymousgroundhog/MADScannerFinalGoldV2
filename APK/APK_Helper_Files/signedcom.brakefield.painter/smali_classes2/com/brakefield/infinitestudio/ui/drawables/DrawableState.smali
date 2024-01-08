.class public Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;
.super Ljava/lang/Object;
.source "DrawableState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;
    }
.end annotation


# instance fields
.field private final attribute:I

.field private listener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

.field private state:Z

.field private stateChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->state:Z

    .line 11
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->stateChanged:Z

    .line 15
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->attribute:I

    return-void
.end method

.method private hasState([I)Z
    .locals 5

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->attribute:I

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateState(Z)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->state:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->stateChanged:Z

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->state:Z

    return-void
.end method


# virtual methods
.method public active()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->state:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->attribute:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 47
    :cond_2
    instance-of v1, p1, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->attribute:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->attribute:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public handleStateChanged()V
    .locals 2

    .line 28
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->stateChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->listener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->state:Z

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;->onStateChanged(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->stateChanged:Z

    return-void
.end method

.method public setOnStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->listener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    return-void
.end method

.method public update([I)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->stateChanged:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->hasState([I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->updateState(Z)V

    return-void
.end method
