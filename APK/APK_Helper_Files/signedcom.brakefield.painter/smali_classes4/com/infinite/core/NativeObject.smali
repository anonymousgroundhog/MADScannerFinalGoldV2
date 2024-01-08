.class public Lcom/infinite/core/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinite/core/NativeObject$OverrideMethodException;
    }
.end annotation


# static fields
.field public static final NULL:I


# instance fields
.field protected deleteNativePointer:Z

.field protected nativePointer:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/infinite/core/NativeObject;->getNativePointer()J

    move-result-wide v0
    :try_end_0
    .catch Lcom/infinite/core/NativeObject$OverrideMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    invoke-virtual {v2}, Lcom/infinite/core/NativeObject$OverrideMethodException;->printStackTrace()V

    .line 17
    :goto_0
    iput-wide v0, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 46
    :try_start_0
    iget-wide v0, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lcom/infinite/core/NativeObject;->deleteNativePointer(J)V
    :try_end_0
    .catch Lcom/infinite/core/NativeObject$OverrideMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Lcom/infinite/core/NativeObject$OverrideMethodException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    return-void
.end method

.method protected deleteNativePointer(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infinite/core/NativeObject$OverrideMethodException;
        }
    .end annotation

    .line 62
    new-instance p1, Lcom/infinite/core/NativeObject$OverrideMethodException;

    const-string p2, "Must override deleteNativePointer() in subclass with JNI call to native object"

    invoke-direct {p1, p0, p2}, Lcom/infinite/core/NativeObject$OverrideMethodException;-><init>(Lcom/infinite/core/NativeObject;Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 73
    instance-of v0, p1, Lcom/infinite/core/NativeObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    check-cast p1, Lcom/infinite/core/NativeObject;

    iget-wide v5, p1, Lcom/infinite/core/NativeObject;->nativePointer:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 74
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infinite/core/NativeObject$OverrideMethodException;
        }
    .end annotation

    .line 27
    iget-boolean v0, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/infinite/core/NativeObject;->deleteNativePointer(J)V

    :cond_0
    return-void
.end method

.method protected getNativePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infinite/core/NativeObject$OverrideMethodException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/infinite/core/NativeObject$OverrideMethodException;

    const-string v1, "Must override getNativePointer() in subclass with JNI call to native object"

    invoke-direct {v0, p0, v1}, Lcom/infinite/core/NativeObject$OverrideMethodException;-><init>(Lcom/infinite/core/NativeObject;Ljava/lang/String;)V

    throw v0
.end method

.method public isNull()Z
    .locals 4

    .line 54
    iget-wide v0, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(J)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/infinite/core/NativeObject;->deleteNativePointer(J)V
    :try_end_0
    .catch Lcom/infinite/core/NativeObject$OverrideMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Lcom/infinite/core/NativeObject$OverrideMethodException;->printStackTrace()V

    .line 40
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/infinite/core/NativeObject;->nativePointer:J

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/infinite/core/NativeObject;->deleteNativePointer:Z

    return-void
.end method
