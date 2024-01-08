.class public Lcom/infinite/core/observe/ObserveFloatNative;
.super Lcom/infinite/core/observe/ObserveNative;
.source "ObserveFloatNative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infinite/core/observe/ObserveNative<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/observe/ObserveNative;-><init>(J)V

    .line 10
    iput-object p3, p0, Lcom/infinite/core/observe/ObserveFloatNative;->listener:Lcom/infinite/core/observe/ObserveNative$OnChange;

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/infinite/core/observe/ObserveNative$OnChange;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/infinite/core/observe/ObserveNative;->addListener(Lcom/infinite/core/observe/ObserveNative$OnChange;)V

    return-void
.end method

.method public native getValue(J)F
.end method

.method public getValue()Ljava/lang/Float;
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/infinite/core/observe/ObserveFloatNative;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lcom/infinite/core/observe/ObserveFloatNative;->getValue(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/infinite/core/observe/ObserveFloatNative;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public native hasChanged(J)Z
.end method

.method public setValue(F)V
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/infinite/core/observe/ObserveFloatNative;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/infinite/core/observe/ObserveFloatNative;->setValue(JF)V

    return-void
.end method

.method public native setValue(JF)V
.end method

.method public bridge synthetic update()Z
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/infinite/core/observe/ObserveNative;->update()Z

    move-result v0

    return v0
.end method
