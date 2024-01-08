.class public Lcom/brakefield/painter/ui/DockableElements$Perpective5Element;
.super Lcom/brakefield/painter/ui/DockableElements$PerspectiveElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Perpective5Element"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1467
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$PerspectiveElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x99

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080338

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1209e7

    .line 1473
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f120781

    return v0
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
