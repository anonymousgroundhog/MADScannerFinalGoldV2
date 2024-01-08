.class abstract Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;
.super Ljava/lang/Object;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MiniToolbar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    return-void
.end method


# virtual methods
.method getActions()[Lcom/brakefield/painter/ui/MiniToolbars$Action;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/brakefield/painter/ui/MiniToolbars$Action;

    return-object v0
.end method

.method abstract getIcon()I
.end method

.method abstract getTag()I
.end method
