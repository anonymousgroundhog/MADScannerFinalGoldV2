.class Lcom/infinite/app/ui/Dropdown$1;
.super Ljava/lang/Object;
.source "Dropdown.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infinite/app/ui/Dropdown;->bindValueChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousPosition:I

.field final synthetic this$0:Lcom/infinite/app/ui/Dropdown;

.field final synthetic val$listener:Lcom/infinite/app/ui/interactions/SelectItemInteraction;


# direct methods
.method constructor <init>(Lcom/infinite/app/ui/Dropdown;Lcom/infinite/app/ui/interactions/SelectItemInteraction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$1;->this$0:Lcom/infinite/app/ui/Dropdown;

    iput-object p2, p0, Lcom/infinite/app/ui/Dropdown$1;->val$listener:Lcom/infinite/app/ui/interactions/SelectItemInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/infinite/app/ui/Dropdown$1;->previousPosition:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 57
    iget p2, p0, Lcom/infinite/app/ui/Dropdown$1;->previousPosition:I

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/infinite/app/ui/Dropdown$1;->val$listener:Lcom/infinite/app/ui/interactions/SelectItemInteraction;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    iget-object p2, p0, Lcom/infinite/app/ui/Dropdown$1;->this$0:Lcom/infinite/app/ui/Dropdown;

    iget-wide v0, p2, Lcom/infinite/app/ui/Dropdown;->target:J

    invoke-virtual {p1, p4, p5, v0, v1}, Lcom/infinite/app/ui/interactions/SelectItemInteraction;->onItemSelected(JJ)V

    .line 61
    iput p3, p0, Lcom/infinite/app/ui/Dropdown$1;->previousPosition:I

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
