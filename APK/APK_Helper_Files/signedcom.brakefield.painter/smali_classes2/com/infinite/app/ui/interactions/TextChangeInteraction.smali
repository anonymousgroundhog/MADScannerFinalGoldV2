.class public Lcom/infinite/app/ui/interactions/TextChangeInteraction;
.super Lcom/infinite/core/NativeObject;
.source "TextChangeInteraction.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native onTextChanged(JLjava/lang/String;J)V
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;J)V
    .locals 6

    .line 12
    iget-wide v1, p0, Lcom/infinite/app/ui/interactions/TextChangeInteraction;->nativePointer:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/infinite/app/ui/interactions/TextChangeInteraction;->onTextChanged(JLjava/lang/String;J)V

    return-void
.end method
