.class abstract Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DockableLayerElement"
.end annotation


# instance fields
.field private layerId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1927
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    const/4 v0, 0x0

    .line 1928
    iput v0, p0, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->layerId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/DockableElements$1;)V
    .locals 0

    .line 1927
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayerId()I
    .locals 1

    .line 1933
    iget v0, p0, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->layerId:I

    return v0
.end method

.method public getTarget()J
    .locals 2

    .line 1937
    iget v0, p0, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->layerId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setLayerId(I)V
    .locals 0

    .line 1930
    iput p1, p0, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->layerId:I

    return-void
.end method
