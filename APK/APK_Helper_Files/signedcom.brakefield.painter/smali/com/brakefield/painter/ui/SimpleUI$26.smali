.class Lcom/brakefield/painter/ui/SimpleUI$26;
.super Ljava/lang/Object;
.source "SimpleUI.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/SimpleUI;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2042
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$26;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$26;->val$id:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$26;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 2

    .line 2049
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMaskActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setMaskActive(Z)V

    .line 2051
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$26;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$26;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public id()I
    .locals 1

    .line 2045
    iget v0, p0, Lcom/brakefield/painter/ui/SimpleUI$26;->val$id:I

    return v0
.end method
