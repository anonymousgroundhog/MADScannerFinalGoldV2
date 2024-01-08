.class Lcom/brakefield/painter/ui/SimpleUI$6;
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

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1781
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->val$id:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 3

    .line 1788
    new-instance v0, Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement;-><init>()V

    .line 1789
    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v1}, Lcom/brakefield/painter/ui/SimpleUI;->access$000(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->optionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public id()I
    .locals 1

    .line 1784
    iget v0, p0, Lcom/brakefield/painter/ui/SimpleUI$6;->val$id:I

    return v0
.end method
