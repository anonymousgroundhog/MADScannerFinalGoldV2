.class public Lcom/infinite/core/observe/ObserveObjectNative;
.super Lcom/infinite/core/observe/ObserveNative;
.source "ObserveObjectNative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infinite/core/observe/ObserveNative<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/observe/ObserveNative;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLcom/infinite/core/observe/ObserveNative$OnChange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/infinite/core/observe/ObserveNative$OnChange<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/observe/ObserveNative;-><init>(J)V

    .line 10
    iput-object p3, p0, Lcom/infinite/core/observe/ObserveObjectNative;->listener:Lcom/infinite/core/observe/ObserveNative$OnChange;

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/infinite/core/observe/ObserveNative$OnChange;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/infinite/core/observe/ObserveNative;->addListener(Lcom/infinite/core/observe/ObserveNative$OnChange;)V

    return-void
.end method

.method public native getValue(J)J
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/infinite/core/observe/ObserveObjectNative;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lcom/infinite/core/observe/ObserveObjectNative;->getValue(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/infinite/core/observe/ObserveObjectNative;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public native hasChanged(J)Z
.end method

.method public bridge synthetic update()Z
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/infinite/core/observe/ObserveNative;->update()Z

    move-result v0

    return v0
.end method
