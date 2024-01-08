.class abstract Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;
.super Lcom/brakefield/painter/ui/MiniToolbars$Action;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$Action;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    return-void
.end method


# virtual methods
.method abstract isOn()Z
.end method

.method update(Landroid/widget/ImageView;)V
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
