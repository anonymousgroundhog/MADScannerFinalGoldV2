.class public Lcom/brakefield/painter/ui/DockableElements$SymXElement;
.super Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SymXElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 910
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f08049c

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120ae0

    .line 916
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1208c2

    return v0
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
