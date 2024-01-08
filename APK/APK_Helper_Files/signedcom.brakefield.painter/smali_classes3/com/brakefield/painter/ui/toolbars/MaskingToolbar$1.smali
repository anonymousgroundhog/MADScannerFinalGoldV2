.class Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;
.super Ljava/lang/Object;
.source "MaskingToolbar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 56
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;)Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;->setType(I)V

    .line 57
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
