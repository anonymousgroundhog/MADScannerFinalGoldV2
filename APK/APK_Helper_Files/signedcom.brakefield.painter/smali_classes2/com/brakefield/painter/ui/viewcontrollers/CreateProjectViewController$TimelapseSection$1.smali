.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->setup(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;

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

    .line 1123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1124
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;

    iget-object p2, p2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseQuality(I)V

    .line 1125
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->access$2600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;I)V

    .line 1126
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

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
