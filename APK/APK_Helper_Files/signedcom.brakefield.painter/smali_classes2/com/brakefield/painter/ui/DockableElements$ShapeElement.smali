.class public abstract Lcom/brakefield/painter/ui/DockableElements$ShapeElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ShapeElement"
.end annotation


# instance fields
.field private final toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1209
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    .line 1210
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$ShapeElement;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    return-void
.end method


# virtual methods
.method protected abstract getType()I
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 1213
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBindingIncompleteDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public isElementActive()Z
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$ShapeElement;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getShapeType()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeElement;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
