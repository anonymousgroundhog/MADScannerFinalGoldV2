.class Lcom/brakefield/painter/ui/SimpleUI$3;
.super Lcom/brakefield/infinitestudio/ui/KeyCommand;
.source "SimpleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/SimpleUI;->getDefaultKeyCommandGroups(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V
    .locals 7

    .line 1714
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$3;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldFire()Z
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$3;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, v0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
