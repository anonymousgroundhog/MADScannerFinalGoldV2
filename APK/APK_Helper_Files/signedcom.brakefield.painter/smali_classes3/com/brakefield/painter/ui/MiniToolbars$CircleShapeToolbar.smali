.class Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;
.super Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CircleShapeToolbar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f08014c

    return v0
.end method

.method getTag()I
    .locals 1

    const/16 v0, 0x8d

    return v0
.end method
