.class public Lcom/infinite/app/ui/interactions/FloatChangeInteraction;
.super Lcom/infinite/core/NativeObject;
.source "FloatChangeInteraction.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native onValueChanged(JFJ)V
.end method


# virtual methods
.method public onValueChanged(FJ)V
    .locals 6

    .line 12
    iget-wide v1, p0, Lcom/infinite/app/ui/interactions/FloatChangeInteraction;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/infinite/app/ui/interactions/FloatChangeInteraction;->onValueChanged(JFJ)V

    return-void
.end method
