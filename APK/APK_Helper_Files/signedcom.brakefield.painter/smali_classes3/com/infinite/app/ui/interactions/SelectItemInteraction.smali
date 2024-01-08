.class public Lcom/infinite/app/ui/interactions/SelectItemInteraction;
.super Lcom/infinite/core/NativeObject;
.source "SelectItemInteraction.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native onItemSelected(JJJ)V
.end method


# virtual methods
.method public onItemSelected(JJ)V
    .locals 7

    .line 12
    iget-wide v1, p0, Lcom/infinite/app/ui/interactions/SelectItemInteraction;->nativePointer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/infinite/app/ui/interactions/SelectItemInteraction;->onItemSelected(JJJ)V

    return-void
.end method
