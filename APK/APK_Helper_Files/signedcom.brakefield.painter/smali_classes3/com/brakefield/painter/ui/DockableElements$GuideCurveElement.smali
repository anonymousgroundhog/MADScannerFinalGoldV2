.class public Lcom/brakefield/painter/ui/DockableElements$GuideCurveElement;
.super Lcom/brakefield/painter/ui/DockableElements$GuideElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuideCurveElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x86

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080428

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201e4

    .line 1101
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1205ad

    return v0
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
