.class public Lcom/brakefield/painter/ui/DockableElements$ShapePathElement;
.super Lcom/brakefield/painter/ui/DockableElements$ShapeElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapePathElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1315
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080475

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12025d

    .line 1321
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f12088c

    return v0
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
