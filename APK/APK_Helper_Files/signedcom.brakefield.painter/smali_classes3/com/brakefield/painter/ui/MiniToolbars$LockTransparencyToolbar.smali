.class Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;
.super Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockTransparencyToolbar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 1

    .line 444
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f080295

    return v0
.end method

.method getTag()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method
