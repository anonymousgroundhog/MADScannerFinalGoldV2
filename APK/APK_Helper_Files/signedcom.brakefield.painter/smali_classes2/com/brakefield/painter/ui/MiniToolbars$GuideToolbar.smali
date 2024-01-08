.class abstract Lcom/brakefield/painter/ui/MiniToolbars$GuideToolbar;
.super Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GuideToolbar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 1

    .line 279
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$GuideToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    return-void
.end method
