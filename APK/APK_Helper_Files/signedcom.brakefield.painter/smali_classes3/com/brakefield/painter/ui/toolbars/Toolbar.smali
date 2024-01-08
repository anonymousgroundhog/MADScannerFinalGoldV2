.class public abstract Lcom/brakefield/painter/ui/toolbars/Toolbar;
.super Ljava/lang/Object;
.source "Toolbar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->applyTool(Z)V

    .line 18
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public cancelTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 22
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancelTool()V

    .line 23
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public abstract getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end method

.method public abstract update()V
.end method
