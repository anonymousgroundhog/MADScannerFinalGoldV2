.class Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar$1;
.super Lcom/brakefield/painter/ui/MiniToolbars$EventAction;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;)V
    .locals 1

    .line 304
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar$1;->this$1:Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;

    iget-object p1, p1, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$EventAction;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f080486

    return v0
.end method

.method onClick(Landroid/view/View;)V
    .locals 0

    .line 311
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->stampShape()V

    .line 312
    iget-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar$1;->this$1:Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;

    iget-object p1, p1, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MiniToolbars;->access$300(Lcom/brakefield/painter/ui/MiniToolbars;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
