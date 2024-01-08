.class abstract Lcom/infinite/core/observe/ObserveNative;
.super Lcom/infinite/core/NativeObject;
.source "ObserveNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinite/core/observe/ObserveNative$OnChange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/infinite/core/NativeObject;"
    }
.end annotation


# instance fields
.field protected listener:Lcom/infinite/core/observe/ObserveNative$OnChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/infinite/core/observe/ObserveNative$OnChange<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/infinite/core/observe/ObserveNative$OnChange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infinite/core/observe/ObserveNative$OnChange<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/infinite/core/observe/ObserveNative;->listener:Lcom/infinite/core/observe/ObserveNative$OnChange;

    return-void
.end method

.method protected abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected hasChanged()Z
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/infinite/core/observe/ObserveNative;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lcom/infinite/core/observe/ObserveNative;->hasChanged(J)Z

    move-result v0

    return v0
.end method

.method protected abstract hasChanged(J)Z
.end method

.method public update()Z
    .locals 3

    .line 22
    iget-wide v0, p0, Lcom/infinite/core/observe/ObserveNative;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lcom/infinite/core/observe/ObserveNative;->hasChanged(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/infinite/core/observe/ObserveNative;->listener:Lcom/infinite/core/observe/ObserveNative$OnChange;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/infinite/core/observe/ObserveNative;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/infinite/core/observe/ObserveNative$OnChange;->change(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method
