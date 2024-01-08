.class Lcom/brakefield/infinitestudio/ui/UI$1;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/UI;->handleShortcutKeys(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/UI;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$hoverContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/UI;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->this$0:Lcom/brakefield/infinitestudio/ui/UI;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->val$hoverContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->this$0:Lcom/brakefield/infinitestudio/ui/UI;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UI;->access$000(Lcom/brakefield/infinitestudio/ui/UI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->this$0:Lcom/brakefield/infinitestudio/ui/UI;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->getShortcutListView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UI;->access$102(Lcom/brakefield/infinitestudio/ui/UI;Landroid/view/View;)Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->this$0:Lcom/brakefield/infinitestudio/ui/UI;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UI;->access$100(Lcom/brakefield/infinitestudio/ui/UI;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->val$hoverContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/UI$1;->this$0:Lcom/brakefield/infinitestudio/ui/UI;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UI;->access$100(Lcom/brakefield/infinitestudio/ui/UI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
