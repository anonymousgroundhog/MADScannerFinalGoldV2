.class public Lcom/brakefield/painter/ui/DockableElements$PerpectiveGridElement;
.super Lcom/brakefield/painter/ui/DockableElements$PerspectiveElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerpectiveGridElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1513
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$PerspectiveElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x9b

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0801ef

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201df

    .line 1519
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f120784

    return v0
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
