.class abstract Lcom/brakefield/painter/ui/MiniToolbars$Action;
.super Ljava/lang/Object;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Action"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;

.field viewId:I


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$Action;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 253
    iput p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$Action;->viewId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MiniToolbars$Action;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    return-void
.end method


# virtual methods
.method abstract getIcon()I
.end method

.method abstract onClick(Landroid/view/View;)V
.end method

.method abstract update(Landroid/widget/ImageView;)V
.end method
