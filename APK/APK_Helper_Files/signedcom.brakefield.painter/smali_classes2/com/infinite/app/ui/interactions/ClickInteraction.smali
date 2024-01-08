.class public Lcom/infinite/app/ui/interactions/ClickInteraction;
.super Lcom/infinite/core/NativeObject;
.source "ClickInteraction.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native onClick(JJII)V
.end method


# virtual methods
.method public onClick(JII)V
    .locals 7

    .line 12
    iget-wide v1, p0, Lcom/infinite/app/ui/interactions/ClickInteraction;->nativePointer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/infinite/app/ui/interactions/ClickInteraction;->onClick(JJII)V

    return-void
.end method
