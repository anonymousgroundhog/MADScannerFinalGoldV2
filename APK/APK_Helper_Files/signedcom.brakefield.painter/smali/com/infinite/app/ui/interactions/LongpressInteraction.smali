.class public Lcom/infinite/app/ui/interactions/LongpressInteraction;
.super Lcom/infinite/core/NativeObject;
.source "LongpressInteraction.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native onLongpress(JJ)Z
.end method


# virtual methods
.method public onLongpress(J)Z
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/infinite/app/ui/interactions/LongpressInteraction;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/infinite/app/ui/interactions/LongpressInteraction;->onLongpress(JJ)Z

    move-result p1

    return p1
.end method
